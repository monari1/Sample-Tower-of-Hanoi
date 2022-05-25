

Hanoi() {             #Recursive function
  local n=$1
  local ini=$2
  local t=$3
  local dest=$4

  if [ $n == 1 ];then
  echo "move disk $n from tower $ini to tower $dest"
  return
  fi
  local c=$((n - 1))

  Hanoi $c $ini $dest $t    #Recursive Function Call
  echo "move disk $n from tower $ini to tower $dest"
  c=$((n - 1))
  Hanoi $c $t $ini $dest    #Recursive Function Call
  return
}


sour=1      #First peg
sec=2       #Second peg
dest=3      #Last peg

# Reading no.of disks on the pegs
read -p "Enter no. of disks: " n
echo "The order is :"
Hanoi $n $sour $sec $dest
