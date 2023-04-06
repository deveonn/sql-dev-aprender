query1.sql.add('SELECT a.nrnota, a.serie, a.dtemissao, b.nrped');
query1.sql.add('FROM caditem');
query1.sql.add('INNER JOIN cadsfam ON caditem.sub_familia = cadsfam.cod');
query1.sql.add('INNER JOIN cadfam ON cadsfam.familia = cadfam.cod');
query1.sql.add('INNER JOIN cadgrupo ON cadfam.grupo = cadgrupo.cod');
query1.sql.add('INNER JOIN cadcli ON a.cliente = cadcli.cod');
query1.sql.add('INNER JOIN cadnfs AS a ON a.nrnota = b.nrnota AND (a.serie = b.serie OR a.serie IS NULL)');
query1.sql.add('INNER JOIN caditnfs AS b ON caditem.cod = b.cod AND b.nrped > 0');
query1.sql.add('INNER JOIN cadtpnfs AS t ON a.tiponfs = t.cod');
query1.sql.add('WHERE caditem.cod BETWEEN ' + QuotedStr(Trim(codi.text) + ' AND '+ Trim(codf.text)));
query1.sql.add('AND cadsfam.cod BETWEEN ' + QuotedStr(Trim(sfi.text) + ' AND '+ Trim(sff.text)));
query1.sql.add('AND cadfam.cod BETWEEN '+ QuotedStr(Trim(fi.text) + ' AND '+ Trim(ff.text)));
query1.sql.add('AND cadgrupo.cod BETWEEN '+QuotedStr(Trim(gi.text)+' AND '+ Trim(gf.text)));
query1.sql.add('AND cadcli.cod BETWEEN '+Trim(cli.text)+' AND '+Trim(clf.text));
query1.sql.add('AND t.cod BETWEEN '+QuotedStr(Trim(tpnfSi.text) +' AND '+ Trim(tpnfSf.text)));
query1.sql.add('AND a.dtemissao BETWEEN ' +QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(dei.text)) )+ ' AND ' +QuotedStr(Formatdatetime('mm/dd/yyyy', strtodate(def.text))));
query1.sql.add('AND b.nrped BETWEEN '+Trim(pedi.text)+' AND '+Trim(pedf.text));
query1.sql.add('AND a.representante BETWEEN '+Trim(repi.text)+' AND '+Trim(repf.text));
query1.sql.add('AND a.nrnota BETWEEN '+Trim(nfsi.text)+' AND '+Trim(nfsf.text));

-- isso aqui deve ficar com o inner join acima,
-- " Note que as variáveis entre aspas simples devem ser substituídas pelos valores correspondentes, e que as cláusulas BETWEEN foram utilizadas em vez de comparações diretas com os valores das variáveis. Isso é mais seguro e evita problemas com injeção de SQL. "

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
    query1.sql.add(' and ( b.nrped > 0 ) '); --
    




    ------------------------------------------------
    