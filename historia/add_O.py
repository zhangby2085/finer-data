import sys

for line in sys.stdin:
    line = line.strip()
    if line == '':
        print()
    else:
        line = line.split()
        if len(line) == 1:
            print(line[0] + '\t' + 'O')
        else:
            print(line[0 ]+ '\t' + line[1])
        
#    word = word.strip()
#    if word == '':
#        print(word)
#    else:
#        print(word + '\t' + 'O')



