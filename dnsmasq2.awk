#!/usr/bin/awk -f

    BEGIN {
      OFS = ",";
    }

    $5 == "reply" && $8 != "127.0.0.1" && $8 !="<CNAME>" && $6 !~ "microsoft.com" && $6 !~ "twitter.com" && $6 !~ "whatsapp.net"  && $6 !~ "akadns.net"  && $6 !~ "windows.net" && $6 !~ "edgecastcdn.net"&& $6 !~ "cloudflare.net$"&& $6 !~
"firefox.com$" && $6 !~ "mozilla.net$" $6 !~ "mozilla.com$" && $6 !~ "amazonaws.com$" && $6 !~ "google.com$" && $6 !~ "cloudfront.net$" && $6 !~ "akamaiedge.net$"  &&
$6 !~ "office.com$"  && $6 !~ "office.com$"  && $6 !~ "facebook.com$" && $6 !~ "amazon.com$"  && $6 !~ "github.com$" && $6 !~ "azure.com$"   &&
$6 !~ "fbcdn.net$"   && $6 !~ "msedge.net$" && $6 !~ "alibabadns.com$"  && $6 !~ "mozaws.com$"  && $6 !~ "apple.com$" && $6 !~ "opensubtitles.org$" && $6 !~ "akamai.net$"&& $6 !~ "skype.cloudapp.net$" {
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
    }







