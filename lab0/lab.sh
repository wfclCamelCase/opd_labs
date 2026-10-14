cd ~/lab0

mkdir chingling lombre seadra

echo "Живет = Cave Forest Urban" > misdreavus
echo "satk=surskit sdef=5 spd=7" > surskit
echo "Живет = Beach Freshwater Marsh" > totodile

chmod 044 misdreavus
chmod 404 surskit
chmod 600 totodile

# CHINGLING
# turtwig, zoroark, milotic - dirs
# vaporeon, panpour, abomasnow - files

cd chingling

mkdir turtwig zoroark milotic

echo "weigth=63.9 height=39.0 atk=7 def=6" > vaporeon
echo "Тип диеты = Omnivore" > panpour
echo -e "Ходы = Avalanche Block Bullet Seed Focus\nPunch Giga Drain Ice Punch Icy Wind Iron\nTail Magic Coat Mud-Slap Outrage Rock\n Climb Role Play Seed Bomb Sleep Talk\nSnore Synthesis Water Pulse Worry Seed" > abomasnow

chmod 330 .
chmod 771 turtwig
chmod 066 vaporeon
chmod 755 zoroark
chmod ug=rw,o= panpour
chmod u=rwx,g=rx,u=x milotic
chmod go=r,u= abomasnow

cd ..

# LOMBRE
# burmy, pidove, paras - dirs
# kabuto, nidoking, aipom - files

cd lombre

mkdir burmy pidove paras

echo -e "Возможности = Overland=4 Surface=7\nUnderwater=7 Jump=1 Power=1\nIntelligence=2 Gilled=0" > kabuto
echo "Тип покемона = POISON GROUND" > nidoking
echo -e "Способности = Scratch Tail Whip\nSand-Attack Astonish Baton Pass Tickle\nFury Swipes Swift Screech Agility Double\nHit Fling Nasty Plot Last Resort" > aipom

chmod 570 .
chmod 334 burmy
chmod u=rw,go= kabuto
chmod 755 pidove
chmod 500 nidoking
chmod u=wx,g=rx,o=rwx paras
chmod 600 aipom

cd ..

# SEADRA
# wurmple, pelipper - dirs
# stunky, sandslash - files

cd seadra

mkdir wurmple pelipper

echo "Тип диеты = Herbivore" > stunky
echo -e "Способности = Landslide Sand Veil Rough\nSkin" > sandslash

chmod 770 .
chmod 337 wurmple
chmod 640 stunky
chmod 500 pelipper
chmod 404 sandslash


cd ..

# LINKS & COPIES

chmod u+w ~/lab0/lombre
ln -f ~/lab0/totodile ~/lab0/lombre/nidokingtotodile
chmod u-w ~/lab0/lombre

ln -sf ~/lab0/seadra ~/lab0/Copy_10

chmod u+r ~/lab0/chingling/vaporeon
cat ~/lab0/lombre/kabuto ~/lab0/chingling/vaporeon > ~/lab0/totodile_15
chmod u-r ~/lab0/chingling/vaporeon

chmod u+r ~/lab0/chingling
chmod u+r ~/lab0/chingling/*
chmod u+w ~/lab0/chingling/milotic
cp -r ~/lab0/chingling ~/lab0/chingling/milotic
chmod u-w ~/lab0/chingling/milotic
chmod u-r ~/lab0/chingling/*
chmod u-r ~/lab0/chingling

ln -sf ~/lab0/misdreavus ~/lab0/seadra/sandslashmisdreavus

chmod u+x ~/lab0/chingling
chmod u+w ~/lab0/chingling/turtwig
cp ~/lab0/totodile ~/lab0/chingling/turtwig
chmod u-w ~/lab0/chingling/turtwig
chmod u-x ~/lab0/chingling

chmod u+w ~/lab0/lombre
cat ~/lab0/totodile > ~/lab0/lombre/aipomtotodile
chmod u-w ~/lab0/lombre

echo ===3===
ls -lR

# FIND & FILTER
touch /tmp/559062

echo ===4.1===
( wc -m < misdreavus >> misdreavus ) 2>/tmp/559062

echo ===4.2===
ls -R seadra 2>/dev/null | sort

echo ===4.3===
grep -r --include='p*' '' ~/lab0 2>>/tmp/559062 | sort -r

echo ===4.4===
grep -rn --include='*y' '' ~/lab0 2>&1 | sort

echo ===4.5===
ls -lR ~/lab0 2>&1 | grep '^[-dl]' | sort -k5 -nr | head -n 3

echo ===4.6===
cat misdreavus 2>>/tmp/559062 | grep -i 'ce'

# REMOVAL

chmod u+wx lombre
chmod u+rwx lombre/*
rm -f surskit
rm -f lombre/aipom
rm -f seadra/sandlashmisdreav
rm -f lombre/nidokingtotodi
rm -rf lombre
chmod u+wx chingling
rmdir chingling/zoroark
