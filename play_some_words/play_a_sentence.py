import sys
import signal
import subprocess


time = sys.argv[1]
freq = sys.argv[2]
sentence = sys.argv[3]

sentence = sentence.lower().translate(None, ' ')

ls = []
for c in sentence:
    if ord(c) < 97 or ord(c) > 122:
        continue
    ls.append(str(ord(c) - 96))


args = ":".join(ls)

cmd = "chuck play_some_numbers:{}:{}:{}".format(time, freq, args)
print cmd
proc = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE,
                        stderr=subprocess.STDOUT, universal_newlines=True)

output = proc.communicate()
retcode = proc.poll()

def exit_gracefully(signum, frame):
    sys.exit(0)
    
signal.signal(signal.SIGINT, exit_gracefully)
signal.signal(signal.SIGTERM, exit_gracefully)
