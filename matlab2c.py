import scipy.io as sio
import numpy as np
import re


def main():
    # Declarations in C
    code = {
        'weightsConv1': 'float weightsConv1[6][1][5][5] = ',
        'biasConv1': 'float biasConv1[6] = ',
        'weightsConv2': 'float weightsConv2[16][6][5][5] = ',
        'biasConv2': 'float biasConv2[16] = ',
        'weightsFC1': 'float weightsFC1[120][16][5][5] = ',
        'biasFC1': 'float biasFC1[120] = ',
        'weightsFC2': 'float weightsFC2[120][84] = ',
        'biasFC2': 'float biasFC2[84] = ',
        'weightsFC3': 'float weightsFC3[84][10] = ',
        'biasFC3': 'float biasFC3[10] = '
    }
    
    # Remove string print length restrictions
    np.set_printoptions(threshold=np.nan)
    
    # Load data
    data = sio.loadmat('lenet5.mat')
    data.pop('__header__')
    data.pop('__version__')
    data.pop('__globals__')
    
    # Remove unnecessary dimensions
    data['biasConv1'] = np.squeeze(data['biasConv1'])
    data['biasConv2'] = np.squeeze(data['biasConv2'])
    data['biasFC1'] = np.squeeze(data['biasFC1'])
    data['biasFC2'] = np.squeeze(data['biasFC2'])
    data['biasFC3'] = np.squeeze(data['biasFC3'])
    
    # Print all dimensions
    print('Pre-processed dimensions:')
    for k in data:
        print((k + ' = {}, Fortran? {}').format(data[k].shape, data[k].flags['F_CONTIGUOUS']))
    
    # Perform transpose to reverse dimensions
    for k in data:
        data[k] = np.transpose(data[k])

    # Print all dimensions
    print('Transposed dimensions:')
    for k in data:
        print((k + ' = {}, C? {}').format(data[k].shape, data[k].flags['C_CONTIGUOUS']))

    # Convert data to string payloads
    payloads = {}
    for k in data:
        payloads[k] = np.array_str(data[k])
    
    # Replace brackets with braces
    for k in payloads:
        payloads[k] = payloads[k].replace('[', '{')
        payloads[k] = payloads[k].replace(']', '},')
    
    # Add declarations
    for k in payloads:
        payloads[k] = code[k] + payloads[k]
        
    # Insert commas between numbers
    weightsConv1Regex = r'{(.\d.\d*)\s*(...\d*)\s*(...\d*)\s*(...\d*)\s*(...\d*)\s*}'
    payloads['weightsConv1'] = re.sub(weightsConv1Regex, r'{\1, \2, \3, \4, \5}', payloads['weightsConv1'])
    weightsConv2Regex = r'{(.\d.\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*}'
    payloads['weightsConv2'] = re.sub(weightsConv2Regex, r'{\1, \2, \3, \4, \5}', payloads['weightsConv2'])
    weightsFC1Regex = r'{(.\d.\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*}'
    payloads['weightsFC1'] = re.sub(weightsFC1Regex, r'{\1, \2, \3, \4, \5}', payloads['weightsFC1'])
    weightsFC2Regex = r'(.\d.\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)'
    payloads['weightsFC2'] = re.sub(weightsFC2Regex, r'\1, \2, \3, \4,', payloads['weightsFC2'])
    weightsFC3Regex = r'(.\d.\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)\s*(...\d*e-\d\d)'
    payloads['weightsFC3'] = re.sub(weightsFC3Regex, r'\1, \2, \3, \4, \5,', payloads['weightsFC3'])
    
    # Write out arrays
    for k in payloads:
        f = open('customHeaders/' + k + '.h', 'w')
        f.write(payloads[k])
        f.close()
    

if __name__ == "__main__":
    main()

