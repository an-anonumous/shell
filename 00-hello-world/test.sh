echo "a1aaaadsagfaaaadaaaadfgdsaahaaaahaaaa" | egrep "a."

egrep "[0-9]+\.[0-9]+" regex.txt

egrep "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$" regex.txt

egrep "^$" regex.txt | wc

egrep "\<a[a-zA-Z0-9]{1,}s\>"  regex.txt

egrep "\ba[a-zA-Z0-9]{1,}s\b"  regex.txt

echo “aasd sadf ”  | egrep "\Ba[a-zA-Z0-9]{1,}\B"

egrep "[0-9]*.[0-9]*.[0-9]*.[0-9]*" regex.txt

egrep "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*" regex.txt

egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" regex.txt

egrep "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$" regex.txt

ifconfig |  egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"





