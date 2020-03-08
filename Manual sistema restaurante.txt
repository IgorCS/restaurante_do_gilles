Instale o xampp para usar offiline.
de preferencia php 5.3

ediqueta o arquivo database.php dentro da pasta app/config/database.php

As linhas 15, 16, 17 e 18 conforme abaixo.

$db['default']['hostname'] = 'localhost';
$db['default']['username'] = 'root';
$db['default']['password'] = '';
$db['default']['database'] = 'nome_do_banco';

Apos isto, abra o navegador localhost/phpmyadmin

digite um nome do banco para criar nome_do_banco

Clique em importar, clique em  escolher e selecione o arquivo banco_de_dados.sql que foi enviado junto no anexo.

apos isso deverá estar funcionando corretamente.
localhost/nome_da_pasta_do_sistema


demo: desktec.com.br/guiche

Contato: varejolider@gmail.com
