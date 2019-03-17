#!/usr/bin/awk -f

    BEGIN {
      OFS = ",";
    }

    $5 == "reply" && $8 != "127.0.0.1" && $8 !="<CNAME>" {
      #time = mktime( \
      #  sprintf("%04d %02d %02d %s\n", \
      #    strftime("%Y", systime()), \
      #    (match("JanFebMarAprMayJunJulAugSepOctNovDec",$1)+2)/3, \
      #    $2, \
      #    gensub(":", " ", "g", $3) \
      #  ) \
      #);
      query = $6;
      host = $8;
      if (!seen[$6]){
        seen[$6]=1
        print query,  host;
        }