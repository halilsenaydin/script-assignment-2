#!/bin/bash

echo -e "Merhaba, sn. yürütücü. Bu ödev, bir kabuktaki erişim haklarını anlamayı ve uygulamaya dökmeyi amaçlamaktadır. \n";

# Check params count
if [ $# -ne 4 ]
then
  echo "Script, 4 parametre beklemektedir.";
  exit 1;
fi

authority=$1;
user="$2";
group="$3";
file="$4";

# Check file is there
test -f $file;
if [ $? -ne 0 ]
then
  echo "Parametre olarak aktarılan dosya bulunamadı."
  exit 1
fi

# Check user is exists
user_count=`cat /etc/passwd | grep "$user" | wc -l`;
if [ $user_count -eq 0 ]
then
  echo "Parametre olarak aktarılan kullanıcı bulunamadı."
  exit 1
fi

# Check group is exists
group_count=`cat /etc/group | grep "$group" | wc -l`;
if [ $group_count -eq 0 ]
then
  echo "Parametre olarak aktarılan grup bulunamadı."
  exit 1
fi

previous_authority=`ls -l $file | tr -s " " | cut -d " " -f 1`;
previous_user=`ls -l $file | tr -s " " | cut -d " " -f 3`;
previous_group=`ls -l $file | tr -s " " | cut -d " " -f 4`;

echo "Dosyanın şuanki yetkileri: $previous_authority";
echo "Dosyanın şuanki kullanıcısı: $previous_user";
echo "Dosyanın şuanki grubu: $previous_group";

# Change user, group, authority
chmod $authority $file;
chown $user:$group $file;

echo "Dosyanın yeni yetkileri: $authority";
echo "Dosyanın yeni kullanıcısı: $user";
echo "Dosyanın yeni grubu: $group";
