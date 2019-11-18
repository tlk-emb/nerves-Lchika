# nerves-Lchika
control raspberry pi's GPIO with nerves.

paste 'lchika_id_rsa.pub' in config/target.exs

function 'lchika' make GPIO 18 output 1 and 0 alternately 15 times.(use as 'lchika(0)'.)

function 'chika' make GPIO 18 output 1.(use as 'chika()'.)

function 'stop' make GPIO 18 output 0.(use as 'stop()'.)
