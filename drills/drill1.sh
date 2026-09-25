#!/bin/bash
# The line below runs the command.
echo "Running the tree command now:"
mkdir -p hello/five/six/seven hello/one/two/three/four
touch hello/five/six/c.txt hello/five/six/seven/error.log hello/one/a.txt hello/one/b.txt hello/one/two/d.txt hello/one/two/three/e.txt hello/one/two/three/four/access.log
find ./hello -type f -name "*.log" -delete
echo "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others" >> hello/one/a.txt
rm -r ./hello/five
mv ./hello/one ./hello/uno
mv ./hello/uno/a.txt ./hello/uno/two
tree ./hello
