query1.sql.add('SELECT CadNFS.nrnota, CadNFS.serie, CadNFS.dtemissao, b.nrped FROM CadNFS. AS a');
query1.sql.add('LEFT JOIN caditnfs AS b ON ( CadNFS.nrnota = b.nrnota) AND ( (CadNFS.serie = b.serie) OR (CadNFS.serie IS NULL) )');
query1.sql.add('LEFT JOIN caditem AS i ON ( i.cod = b.cod )  AND ( b.nrped > 0 ) LEFT JOIN cadtpnfs AS t ON ( CadNFS.tiponfs = t.cod )');
query1.sql.add('LEFT JOIN cadsfam ON ( i.sub_familia = cadsfam.cod)');
query1.sql.add('LEFT JOIN cadfam ON ( cadsfam.familia = cadfam.cod )');
query1.sql.add('LEFT JOIN cadgrupo ON ( cadfam.grupo = cadgrupo.cod )');
query1.sql.add('LEFT JOIN cadcli ON ( CadNFS.cliente = cadcli.cod )');

query1.sql.add('WHERE ( i.cod BETWEEN '+QuotedStr(Trim(codi.text))+' AND '+QuotedStr(Trim(codf.text))+')');

query1.sql.add('AND (cadsfam.cod BETWEEN '+QuotedStr(Trim(sfi.text))+' AND '+QuotedStr(Trim(sff.text))+')');
query1.sql.add('AND (cadfam.cod BETWEEN '+QuotedStr(Trim(fi.text))+' AND '+QuotedStr(Trim(ff.text))+')');
query1.sql.add('AND (cadgrupo.cod BETWEEN '+QuotedStr(Trim(gi.text))+' AND '+QuotedStr(Trim(gf.text))+')');
query1.sql.add('AND (cadcli.cod BETWEEN '+QuotedStr(Trim(cli.text))+' AND '+QuotedStr(Trim(clf.text))+')');
query1.sql.add('AND (t.cod BETWEEN '+QuotedStr(Trim(tpnfSi.text))+' AND '+QuotedStr(Trim(tpnfSf.text))+')');
query1.sql.add('AND (CadNFS.dtemissao BETWEEN '+QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(dei.text)))+' AND '+QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(def.text)))+')');
query1.sql.add('AND (b.nrped BETWEEN '+QuotedStr(Trim(pedi.text))+' AND '+QuotedStr(Trim(pedf.text))+')');
query1.sql.add('AND (CadNFS.representante BETWEEN '+QuotedStr(Trim(repi.text))+' AND '+QuotedStr(Trim(repf.text))+')');
query1.sql.add('AND (CadNFS.nrnota BETWEEN '+QuotedStr(Trim(nfsi.text))+' AND '+QuotedStr(Trim(nfsf.text))+')');

query1.sql.add('AND (CadNFS.tipo = ' + QuotedStr('S') + ')  and (CadNFS.STATUSNFE = ' + QuotedStr('A') + ')  and ((t.geracr = ' + QuotedStr('S') + ') or ((t.natoperacao = '+ QuotedStr('611') +') or (t.natoperacao = ' + QuotedStr('511') + ')  or (t.natoperacao = ' + QuotedStr('6109') + ') or (t.natoperacao = ' + QuotedStr('6.109') + ') or (t.natoperacao=' + QuotedStr('5101') + ') or (t.natoperacao=' + QuotedStr('6101') + ') or (t.natoperacao=' + QuotedStr('5.101') + ' or (t.natoperacao=' + QuotedStr('6.101') + ') or (t.natoperacao=' + QuotedStr('5.11') + ') or (t.natoperacao=' + QuotedStr('6.11') + ')))'+')');

