#head -n 250424 groundtruth6.csv | grep "<FILENAME>" | cut -f 2 > filenames
#head -n 250424 groundtruth6.csv | sed -e "s/<FILENAME>.*//g" | python3 remove_special_chars.py | tail -n +2 > gt.csv 

#python3 make_ocr_csv.py | python3 remove_special_chars.py | cut -f 1 | python3 tokenize.py | python3 add_O.py > ocr.words.csv

# opeta stanford train.gt:llä

#Make gt-model.ser.gz

# käytä train.gt-stanfordia ocr.csv:ään
### POISTA FILENAME-RIVIT ENNEN KUIN TÄGGÄÄT -> TMP
cat ocr.words.csv | sed -e "s/FILENAME.*//g" > tmp
#java -cp ../../../../Downloads/stanford-ner-2016-10-31/stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier gt-model.ser.gz -testFile tmp > tmp2
#cut -f 1,3 tmp2 > ocr.csv
#rm tmp tmp2





# opeta stanford train.gt:llä ja train.ocr:llä

#head -n 192985 gt.csv > train.gt
#tail -n 48065 gt.csv > test.gt






# evaluoi train.gt-stanford test.gt:llä ja test.ocr:llä


# evaluoi train.ocr-stanford test.ocr:llä


