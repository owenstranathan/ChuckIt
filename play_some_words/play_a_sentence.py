import pdb
import sys
import subprocess


time = sys.argv[1]
freq = sys.argv[2]
sentence = sys.argv[3]

sentence = sentence.lower().translate(None, ' ')

l = [str(ord(c) - 96) for c in sentence]


args = ":".join(l)

cmd = "chuck play_some_numbers:{}:{}:{}".format(time,freq, args)
print cmd
proc = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE,
                 stderr=subprocess.STDOUT, universal_newlines=True)

output = proc.communicate()
retcode = proc.poll()

print output
print retcode

