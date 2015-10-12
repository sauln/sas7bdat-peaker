#!python
import sys

print sys.argv

from sas7bdat import SAS7BDAT, SASHeader

f = '../data/beer.sas7bdat'

#sys.argv[1]
S = SAS7BDAT(f)

l = S.readlines()
for i in xrange(10):
    print next(l)

print S.header







#h = f.header.read_page_header()


#print "Type of S: %s" %type(S)
#print "S: %s" %S


#print "var(s): %s" %vars(S)

#h = S.header
#print "type h: %s" %type(h)
#print "\n\ns.header: %s" %S.header

#print "\n\nREADLINES:\n"
#print S.readlines()






   
#for row in S:
#    print row


#sys.exit(1)

