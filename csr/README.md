# SSL CSR file Generator
## _Instructions_
First create the folder / Directory with your domain name and cd to the folder / Directory example
~~~sh
$mkdir mydomain.com
$cd mydomain.com
~~~

Just download the _'csr_generator'_ file to directory

~~~sh
$wget https://github.com/maheshkn400/Linux-shell-scripts/raw/master/csr/csr_generator
~~~

Change the file to execute

~~~sh
chmod +x csr_generator
~~~

Execute and follow the instruction

~~~sh
./csr_generator
~~~

Finally with you domain name one '.csr' and '.key' files create for example

~~~sh
$ls
mydomain.csr mydomain.key
~~~

## _Submit '.csr' file to your SSL vendor and keep '.key' file to configure in SSL config file_
