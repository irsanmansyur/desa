#============
# Untuk menghapus index.php dari url OpenSID, ubah nama file ini menjadi .htaccess,
# sehingga misalnya, modul Web bisa dipanggil dengan http://localhost/first.
# Untuk menggunakan fitur ini, pastikan konfigurasi apache di server SID
# mengizinkan penggunaan .htaccess
#============
RewriteEngine on
RewriteBase /
# Apabila menggunakan sub-domain atau sub-folder gunakan bentuk berikut
# RewriteBase /nama-sub-folder/

# Prevent index dirs
RewriteCond $1 
RewriteRule ^(.*)$ index.php/$1 [L,QSA]

# General dirs / files
RewriteCond $1 !^(index\.php|resources|robots\.txt)
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^(.*)$ index.php/$1 [L,QSA]

# Protec Folder Not Index
Options All -Indexes