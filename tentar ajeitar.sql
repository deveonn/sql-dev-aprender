   query1.sql.add('SELECT a.nrnota, a.serie, a.dtemissao, b.nrped FROM CadNFS AS a');
    query1.sql.add('LEFT JOIN caditnfs AS b ON ( a.nrnota = b.nrnota) AND ( (a.serie = b.serie) OR (a.serie IS NULL) )');
    query1.sql.add('LEFT JOIN caditem AS i ON ( i.cod = b.cod )  AND ( b.nrped > 0 ) LEFT JOIN cadtpnfs AS t ON ( a.tiponfs = t.cod )');
    query1.sql.add('LEFT JOIN cadsfam ON ( i.sub_familia = cadsfam.cod)');
    query1.sql.add('LEFT JOIN cadfam ON ( cadsfam.familia = cadfam.cod )');
    query1.sql.add('LEFT JOIN cadgrupo ON ( cadfam.grupo = cadgrupo.cod )');
    query1.sql.add('LEFT JOIN cadcli ON ( a.cliente = cadcli.cod )');
    query1.sql.add('WHERE i.cod BETWEEN '+QuotedStr(Trim(codi.text))+' AND '+Trim(codf.text));
    query1.sql.add('AND cadsfam.cod BETWEEN '+QuotedStr(Trim(sfi.text)+' AND '+Trim(sff.text)));
    query1.sql.add('AND cadfam.cod BETWEEN '+QuotedStr(Trim(fi.text)+' AND '+Trim(ff.text)));
    query1.sql.add('AND cadgrupo.cod BETWEEN '+QuotedStr(Trim(gi.text)+' AND '+Trim(gf.text)));
    query1.sql.add('AND cadcli.cod BETWEEN '+Trim(cli.text)+' AND '+Trim(clf.text));
    query1.sql.add('AND t.cod BETWEEN '+QuotedStr(Trim(tpnfSi.text)+' AND '+Trim(tpnfSf.text)));
    query1.sql.add(
      'AND a.dtemissao BETWEEN '+QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(dei.text)))+
      ' AND '+QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(def.text)))
   );
    query1.sql.add('AND b.nrped BETWEEN '+Trim(pedi.text)+' AND '+Trim(pedf.text));
    query1.sql.add('AND a.representante BETWEEN '+Trim(repi.text)+' AND '+Trim(repf.text));
    query1.sql.add('AND a.nrnota BETWEEN '+Trim(nfsi.text)+' AND '+Trim(nfsf.text));











    query1.sql.add('AND (a.tipo = ' + QuotedStr('S') + ')  and (a.STATUSNFE = ' + QuotedStr('A') + ')  and ((t.geracr = ' + QuotedStr('S') + ') or ((t.natoperacao = '+ QuotedStr('611') +') or (t.natoperacao = ' + QuotedStr('511') + ')  or (t.natoperacao = ' + QuotedStr('6109') + ') or (t.natoperacao = ' + QuotedStr('6.109') + ') or (t.natoperacao=' + QuotedStr('5101') + ') or (t.natoperacao=' + QuotedStr('6101') + ') or (t.natoperacao=' + QuotedStr('5.101') + ' or (t.natoperacao=' + QuotedStr('6.101') + ') or (t.natoperacao=' + QuotedStr('5.11') + ') or (t.natoperacao=' + QuotedStr('6.11') + ')))  order by a.nrnota');


--------------------------

 query1.sql.add(' Select a.nrnota, a.serie, a.dtemissao, b.nrped from caditnfs AS b, cadnfs AS a, caditem, cadtpnfs AS t, cadcli, cadgrupo, cadsfam, cadfam ');

    query1.sql.add(' where ( caditem.cod >= '+QuotedStr(Trim(codi.text)+' and caditem.cod <= '+Trim(codf.text))+' ) '); -- ok
    query1.sql.add(' and ( caditem.sub_familia = cadsfam.cod ) '); --ok 
    query1.sql.add(' and ( cadsfam.cod >= '+QuotedStr(Trim(sfi.text)+' and cadsfam.cod <= '+Trim(sff.text))+' ) '); --ok
    query1.sql.add(' and ( cadsfam.familia = cadfam.cod ) '); --ok 
    query1.sql.add(' and ( cadfam.cod >= '+QuotedStr(Trim(fi.text)+' and cadfam.cod <= '+Trim(ff.text))+' ) '); --ok
    query1.sql.add(' and ( cadfam.grupo = cadgrupo.cod ) ');
    query1.sql.add(' and ( cadgrupo.cod >= '+QuotedStr(Trim(gi.text)+' and cadgrupo.cod <= '+Trim(gf.text))+' ) '); --ok
    query1.sql.add(' and ( a.nrnota = b.nrnota ) ');
    query1.sql.add(' and ( (a.serie = b.serie) or (a.serie is null) ) ');
    query1.sql.add(' and ( caditem.cod = b.cod ) ');
    query1.sql.add(' and ( cadcli.cod >= '+Trim(cli.text)+' and cadcli.cod <= '+Trim(clf.text)+' ) '); --ok
    query1.sql.add(' and ( a.cliente = cadcli.cod ) ');
    query1.sql.add(' and ( t.cod >= '+QuotedStr(Trim(tpnfSi.text)+' and t.cod <= '+Trim(tpnfSf.text))+' ) ');
    query1.sql.add(' and ( a.tiponfs = t.cod ) ');
    query1.sql.add(' and ( a.dtemissao >= ' +QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(dei.text)) )+ ' and a.dtemissao <= ' +QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(def.text)) )+ ' ) '); --ok


    query1.sql.add(' and ( b.nrped >= '+Trim(pedi.text)+' and b.nrped <= '+Trim(pedf.text)+' ) '); --ok 
    query1.sql.add(' and ( a.representante >= '+Trim(repi.text)+' and a.representante <= '+Trim(repf.text)+' ) '); --ok
    query1.sql.add(' and ( a.nrnota >= '+Trim(nfsi.text)+' and a.nrnota <= '+Trim(nfsf.text)+' ) '); --ok
    query1.sql.add(' and ( b.nrped > 0 ) '); -- OK ...
    




    ------------------------------------------------
query.sql.add('SELECT a.nrnota, a.serie, a.dtemissao, b.nrped')
query.sql.add('FROM CadNFS AS a')
query.sql.add('LEFT JOIN caditnfs AS b ON ( a.nrnota = b.nrnota) AND ( (a.serie = b.serie) OR (a.serie IS NULL) )')
query.sql.add('LEFT JOIN caditem AS i ON ( i.cod = b.cod )  AND ( b.nrped > 0 ) LEFT JOIN cadtpnfs AS t ON ( a.tiponfs = t.cod )')
query.sql.add('LEFT JOIN cadsfam ON ( i.sub_familia = cadsfam.cod)')
query.sql.add('LEFT JOIN cadfam ON ( cadsfam.familia = cadfam.cod )')
query.sql.add('LEFT JOIN cadgrupo ON ( cadfam.grupo = cadgrupo.cod )')
query.sql.add('LEFT JOIN cadcli ON ( a.cliente = cadcli.cod )')
query.sql.add('WHERE i.cod BETWEEN '+QuotedStr('0')+' AND 'ZZZZZZZZZZ'')
query.sql.add('AND cadsfam.cod BETWEEN '0' AND 'ZZZZZZZZZZ'')
query.sql.add('AND cadfam.cod BETWEEN '0' AND 'ZZZZZZZZZZ'')
query.sql.add('AND cadgrupo.cod BETWEEN '0' AND 'ZZZZZZZZZZ'')
query.sql.add('AND cadcli.cod BETWEEN 00000 AND 99999')
query.sql.add('AND t.cod BETWEEN '0' AND 'ZZZZZZZZZZ'')
query.sql.add('AND a.dtemissao BETWEEN '01/01/1900' AND '12/31/2999'')
query.sql.add('AND b.nrped BETWEEN 0 AND 9999999999')
query.sql.add('AND a.representante BETWEEN 00000 AND 99999')
query.sql.add('AND a.nrnota BETWEEN 0 AND 9999999999'

-------------------------------------------------------------------------------
   query1.sql.add(
      'SELECT a.nrnota, a.serie, a.dtemissao, b.nrped FROM CadNFS AS a' +
      'LEFT JOIN caditnfs AS b ON ( a.nrnota = b.nrnota) AND ( (a.serie = b.serie) OR (a.serie IS NULL) )' +
      'LEFT JOIN caditem AS i ON ( i.cod = b.cod )  AND ( b.nrped > 0 ) LEFT JOIN cadtpnfs AS t ON ( a.tiponfs = t.cod )' +
      'LEFT JOIN cadsfam ON ( i.sub_familia = cadsfam.cod)' +
      'LEFT JOIN cadfam ON ( cadsfam.familia = cadfam.cod )' +
      'LEFT JOIN cadgrupo ON ( cadfam.grupo = cadgrupo.cod )' +
      'LEFT JOIN cadcli ON ( a.cliente = cadcli.cod )' +
      'WHERE i.cod BETWEEN '+QuotedStr(Trim(codi.text))+' AND '+Trim(codf.text) +
      'AND cadsfam.cod BETWEEN '+QuotedStr(Trim(sfi.text)+' AND '+Trim(sff.text)) +
      'AND cadfam.cod BETWEEN '+QuotedStr(Trim(fi.text)+' AND '+Trim(ff.text)) +
      'AND cadgrupo.cod BETWEEN '+QuotedStr(Trim(gi.text)+' AND '+Trim(gf.text)) +
      'AND cadcli.cod BETWEEN '+Trim(cli.text)+' AND '+Trim(clf.text) +
      'AND t.cod BETWEEN '+QuotedStr(Trim(tpnfSi.text)+' AND '+Trim(tpnfSf.text)) +
      'AND a.dtemissao BETWEEN '+QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(dei.text)))+' AND '+QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(def.text)))+
      'AND b.nrped BETWEEN '+Trim(pedi.text)+' AND '+Trim(pedf.text) +
      'AND a.representante BETWEEN '+Trim(repi.text)+' AND '+Trim(repf.text) +
      'AND a.nrnota BETWEEN '+Trim(nfsi.text)+' AND '+Trim(nfsf.text) 
   );