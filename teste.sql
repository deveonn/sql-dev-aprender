-- * SQL GERADO PELO CÓDIGO !!!!

SELECT a.nrnota, a.serie, a.dtemissao, b.nrped FROM CadNFS AS a LEFT JOIN caditnfs AS b ON ( a.nrnota = b.nrnota) AND ( (a.serie = b.serie) OR (a.serie IS NULL) ) LEFT JOIN caditem AS i ON ( i.cod = b.cod )  AND ( b.nrped > 0 ) LEFT JOIN cadtpnfs AS t ON ( a.tiponfs = t.cod ) LEFT JOIN cadsfam ON ( i.sub_familia = cadsfam.cod) LEFT JOIN cadfam ON ( cadsfam.familia = cadfam.cod ) LEFT JOIN cadgrupo ON ( cadfam.grupo = cadgrupo.cod ) LEFT JOIN cadcli ON ( a.cliente = cadcli.cod ) WHERE ( i.cod BETWEEN '0' AND 'ZZZZZZZZZZ') AND (cadsfam.cod BETWEEN '0' AND 'ZZZZZZZZZZ') AND (cadfam.cod BETWEEN '0' AND 'ZZZZZZZZZZ') AND (cadgrupo.cod BETWEEN '1' AND '2') AND (cadcli.cod BETWEEN '00000' AND '99999') AND (t.cod BETWEEN '0' AND 'ZZZZZZZZZZ') AND (a.dtemissao BETWEEN '01/01/1900' AND '12/31/2999') AND (b.nrped BETWEEN '0' AND '9999999999') AND (a.representante BETWEEN '00000' AND '99999') AND (a.nrnota BETWEEN '0' AND '9999999999')  AND (a.tipo = 'S')  and (cadnfs.STATUSNFE = "A")  and ((t.geracr = 'S') or ((t.natoperacao = '611') or (t.natoperacao = '511')  or (t.natoperacao = '6109') or (t.natoperacao = '6.109')  or(t.natoperacao='5101') or (t.natoperacao='6101')or(t.natoperacao='5.101') or (t.natoperacao='6.101') or (t.natoperacao='5.11') or (t.natoperacao='6.11')))  order by a.nrnota