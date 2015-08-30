#!python
import sys

print sys.argv

from sas7bdat import SAS7BDAT


f = '../data/beer.sas7bdat'

#sys.argv[1]
S = SAS7BDAT(f)
for row in S:
    print row


#sys.exit(1)

