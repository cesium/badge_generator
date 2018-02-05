
function geraPDF(){
  heroku run rake sei:nr_qrc_generator\[$1,$2,SU\] > $1.in
  tail -n +8 $1.in | sed  's///g' > temp
  cat temp > $1.in
  make ./pdf/$1.pdf
}


while IFS=, read -r col1 col2
do
  geraPDF $col1 $col2
done < $1
