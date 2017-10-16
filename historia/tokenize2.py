# second tokenizer for ocr text, only tokenizer for groundtruth text

import sys

for word in sys.stdin:

    word = word.strip()

    if word == '':
        print()

    # tokenize prefix with !?:
    word = word[::-1]
    tokens = []
    while(True):        
        if len(word) > 1:
            if word[-1] in ['.', ',', '!', '?', ':']:
                tokens.append(word[-1])
                word = word[:-1]
            else:
                break
        else:
            break

    for token in tokens:
        print(token)

    # tokenize suffix with !?:
    word = word[::-1]
    tokens = []
    while(True):        
        if len(word) > 1:
            if word[-1] in ['.', ',', '!', '?', ':']:
                tokens.append(word[-1])
                word = word[:-1]
            else:
                break
        else:
            break
    
    if word != '':
        print(word)
    for token in tokens[::-1]:
        print(token)
                