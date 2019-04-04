
#First get your API key and init

source ~/.vt.toml
 echo IF WORKING YOUR KEY IS: $apikey
 
 
 #DEMOS api
 
 
curl -XPOST https://www.virustotal.com/vtapi/v2/file/scan --form "apikey=$apikey" --form "file=@README.md" -G 
#will RETURN THE RESOURCE QUEUED {"scan_id": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78-1554363699", "sha1": "81c6c85debe165abad035c76a8795bc1620db89e", "resource": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", "response_code": 1, "sha256": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", "permalink": "https://www.virustotal.com/file/e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78/analysis/1554363699/", "md5": "24b838286j@m:~/Documents/go/src/github.com/VirusTotal/vt-cli$ t succ-request GET   --url "https://www.virustotal.com/vtapi/v2/file/report?apikey=$apikey" -v-XPOST https://www.virustotal.com/vtapi/v2/file/scan --form "

#check
curl --request GET   --url "https://www.virustotal.com/vtapi/v2ile/report?apikey=$apikey&resource=e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78"
#WILL UPDATE ON STATUS {"response_code": -2, "resource": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", "scan_id": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", "verbose_msg": "Your resource is queued for analysis"}j@m:~/Documents/go/src/github.com/VirusTotal/vt-cli$ 
