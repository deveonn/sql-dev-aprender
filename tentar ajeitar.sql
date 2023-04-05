SELECT a.nrnota, a.serie, a.dtemissao, b.nrped
FROM caditem
INNER JOIN cadsfam ON caditem.sub_familia = cadsfam.cod
INNER JOIN cadfam ON cadsfam.familia = cadfam.cod
INNER JOIN cadgrupo ON cadfam.grupo = cadgrupo.cod
INNER JOIN cadcli ON a.cliente = cadcli.cod
INNER JOIN cadnfs AS a ON a.nrnota = b.nrnota AND (a.serie = b.serie OR a.serie IS NULL)
INNER JOIN caditnfs AS b ON caditem.cod = b.cod AND b.nrped > 0
INNER JOIN cadtpnfs AS t ON a.tiponfs = t.cod
WHERE caditem.cod BETWEEN 'codi' AND 'codf'
AND cadsfam.cod BETWEEN 'sfi' AND 'sff'
AND cadfam.cod BETWEEN 'fi' AND 'ff'
AND cadgrupo.cod BETWEEN 'gi' AND 'gf'
AND cadcli.cod BETWEEN 'cli' AND 'clf'
AND t.cod BETWEEN 'tpnfSi' AND 'tpnfSf'
AND a.dtemissao BETWEEN 'dei' AND 'def'
AND b.nrped BETWEEN 'pedi' AND 'pedf'
AND a.representante BETWEEN 'repi' AND 'repf'
AND a.nrnota BETWEEN 'nfsi' AND 'nfsf'



-- isso aqui deve ficar com o inner join acima,
-- " Note que as variáveis entre aspas simples devem ser substituídas pelos valores correspondentes, e que as cláusulas BETWEEN foram utilizadas em vez de comparações diretas com os valores das variáveis. Isso é mais seguro e evita problemas com injeção de SQL. "

 query1.sql.add(' Select a.nrnota, a.serie, a.dtemissao, b.nrped from caditnfs AS b, cadnfs AS a, caditem, cadtpnfs AS t, cadcli, cadgrupo, cadsfam, cadfam ');

    query1.sql.add(' where ( caditem.cod >= '+QuotedStr(Trim(codi.text)+' and caditem.cod <= '+Trim(codf.text))+' ) ');
    query1.sql.add(' and ( caditem.sub_familia = cadsfam.cod ) ');
    query1.sql.add(' and ( cadsfam.cod >= '+QuotedStr(Trim(sfi.text)+' and cadsfam.cod <= '+Trim(sff.text))+' ) ');
    query1.sql.add(' and ( cadsfam.familia = cadfam.cod ) ');
    query1.sql.add(' and ( cadfam.cod >= '+QuotedStr(Trim(fi.text)+' and cadfam.cod <= '+Trim(ff.text))+' ) ');
    query1.sql.add(' and ( cadfam.grupo = cadgrupo.cod ) ');
    query1.sql.add(' and ( cadgrupo.cod >= '+QuotedStr(Trim(gi.text)+' and cadgrupo.cod <= '+Trim(gf.text))+' ) ');
    query1.sql.add(' and ( a.nrnota = b.nrnota ) ');
    query1.sql.add(' and ( (a.serie = b.serie) or (a.serie is null) ) ');
    query1.sql.add(' and ( caditem.cod = b.cod ) ');
    query1.sql.add(' and ( cadcli.cod >= '+Trim(cli.text)+' and cadcli.cod <= '+Trim(clf.text)+' ) ');
    query1.sql.add(' and ( a.cliente = cadcli.cod ) ');
    query1.sql.add(' and ( t.cod >= '+QuotedStr(Trim(tpnfSi.text)+' and t.cod <= '+Trim(tpnfSf.text))+' ) ');
    query1.sql.add(' and ( a.tiponfs = t.cod ) ');
    query1.sql.add(' and ( a.dtemissao >= ' +QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(dei.text)) )+ ' and a.dtemissao <= ' +QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(def.text)) )+ ' ) ');
    query1.sql.add(' and ( b.nrped >= '+Trim(pedi.text)+' and b.nrped <= '+Trim(pedf.text)+' ) ');
    query1.sql.add(' and ( a.representante >= '+Trim(repi.text)+' and a.representante <= '+Trim(repf.text)+' ) ');
    query1.sql.add(' and ( a.nrnota >= '+Trim(nfsi.text)+' and a.nrnota <= '+Trim(nfsf.text)+' ) ');
    query1.sql.add(' and ( b.nrped > 0 ) ');