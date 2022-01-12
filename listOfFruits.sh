index=0;

fruits[((index++))]="Grapes";
fruits[((index++))]="Mangoes";
fruits[((index++))]="Watermelons";

echo ${fruits[@]};
echo "Size of a fruit array : "${#fruits[@]};
echo "Indexs of fruits array : "${!fruits[@]};
