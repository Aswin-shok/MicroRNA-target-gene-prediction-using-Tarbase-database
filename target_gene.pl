use warnings;
open(F,"TarBase_v8_download.txt");#TarBase_v8_download.txt 

while(chomp($line=<F>))

{

 if($line =~ /^(\w.*)\t(\w.*)\t(\w.*)\t(Homo sapiens)\t(.*)$/)
 {
  
  $geneId = $1;
  $geneName = $2;
  $mirna = $3;
  $species = $4;
  $all1 = $5;
  
  push @geneId,$geneId;
  push @geneName,$geneName;
  push @mirna,$mirna;
  push @species,$species;
  push @all1,$all1;
 }
}


open(A,"miRNA.txt");

$char = "miRNA";
while(chomp($line=<A>))

{

 if($line =~/^miRNA([1-9]|1[0-9]|2[0-9]|2[0-9])\t(\w.*)$/)
 {
  
  $mir = $char.$1;
  $hsa1 = $2;
  
  push @mir,$mir;
  push @hsa1,$hsa1;
 }
}

$l = @hsa1;
$len = @mirna;
print "$l\n";
print "$len\n";
print "@hsa1\n";
open(B,">target_gene_SATB2detailed.txt");#output_file_name
#open(C,">target_gene_KLHL8geneid.txt");


for($i=0;$i<=$l-1;$i++)
{
 for($j=0;$j<=$len-1;$j++)
 {
  if($hsa1[$i] eq $mirna[$j])
  {
   print B "$hsa1[$i]\t$mirna[$j]\t$geneId[$j]\t$geneName[$j]\t$species[$j]\t$all1[$j]\n";
 #  print C "$hsa1[$i]\t$mirna[$j]\t$geneName[$j]\n";
  }
 }
}

close F;
close A;
close B;
#close C;
