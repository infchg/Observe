# yaragraf

 The goal of Yaragraf is to deliver graphical display of yara rules,
 at this stage you can use this as a demos automating crontab calls to API https://github.com/VirusTotal/yara

## VT API made easy with basic steps and examples

  * Step1. Get your API key 
  
  sign up from virustotal.com

 * Step2. save your key in the config file (vt init #optional) but at least save it in an environment variable:
 
  source ~/.vt.toml


 * Step3. use Curl 1 line to test the API with your key

    curl -XPOST https://www.virustotal.com/vtapi/v2/file/scan --form "apikey=$apikey" --form "file=@README.md" -G 

this should RETURN THE RESOURCE was QUEUED
```
{"scan_id": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78-1554363699", 
"sha1": "81c6c85debe165abad035c76a8795bc1620db89e", "resource": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", "response_code": 1, "sha256": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", "permalink": "https://www.virustotal.com/file/e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78/analysis/1554363699/", "md5": "24b838286j@m:~/Documents/go/src/github.com/VirusTotal/vt-cli$ t succ-request GET   --url "https://www.virustotal.com/vtapi/v2/file/report?apikey=$apikey" -v-XPOST https://www.virustotal.com/vtapi/v2/file/scan --form "
```

  * Step4. check if the queued scan is still there or completed: 1 curl line:

      curl --request GET   --url "https://www.virustotal.com/vtapi/v2ile/report?apikey=$apikey&resource=e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78"

the response WILL give you the latest UPDATE ON STATUS 
```
{"response_code": -2, "resource": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", 
"scan_id": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78", "verbose_msg": "Your resource is queued for analysis"}j@m:~/Documents/go/src/github.com/VirusTotal/vt-cli$ 
```

## Example JQ of detailed scan

```
{
  "scans": {
    "Bkav": {
      "detected": false,
      "version": "1.3.0.9899",
      "result": null,
      "update": "20190404"
    },
    "TotalDefense": {
      "detected": false,
      "version": "37.1.62.1",
      "result": null,
      "update": "20190404"
    },
    "MicroWorld-eScan": {
      "detected": false,
      "version": "14.0.297.0",
      "result": null,
      "update": "20190404"
    },
    "FireEye": {
      "detected": false,
      "version": "29.7.0.0",
      "result": null,
      "update": "20190404"
    },
    "CAT-QuickHeal": {
      "detected": false,
      "version": "14.00",
      "result": null,
      "update": "20190403"
    },
    "ALYac": {
      "detected": false,
      "version": "1.1.1.5",
      "result": null,
      "update": "20190404"
    },
    "Malwarebytes": {
      "detected": false,
      "version": "2.1.1.1115",
      "result": null,
      "update": "20190404"
    },
    "SUPERAntiSpyware": {
      "detected": false,
      "version": "5.6.0.1032",
      "result": null,
      "update": "20190404"
    },
    "TheHacker": {
      "detected": false,
      "version": "6.8.0.5.4121",
      "result": null,
      "update": "20190403"
    },
    "K7GW": {
      "detected": false,
      "version": "11.36.30484",
      "result": null,
      "update": "20190403"
    },
    "K7AntiVirus": {
      "detected": false,
      "version": "11.36.30494",
      "result": null,
      "update": "20190404"
    },
    "Arcabit": {
      "detected": false,
      "version": "1.0.0.845",
      "result": null,
      "update": "20190404"
    },
    "Baidu": {
      "detected": false,
      "version": "1.0.0.2",
      "result": null,
      "update": "20190318"
    },
    "NANO-Antivirus": {
      "detected": false,
      "version": "1.0.134.24576",
      "result": null,
      "update": "20190404"
    },
    "Cyren": {
      "detected": false,
      "version": "6.2.0.1",
      "result": null,
      "update": "20190404"
    },
    "ESET-NOD32": {
      "detected": false,
      "version": "19138",
      "result": null,
      "update": "20190404"
    },
    "TrendMicro-HouseCall": {
      "detected": false,
      "version": "10.0.0.1040",
      "result": null,
      "update": "20190404"
    },
    "Avast": {
      "detected": false,
      "version": "18.4.3895.0",
      "result": null,
      "update": "20190404"
    },
    "ClamAV": {
      "detected": false,
      "version": "0.101.2.0",
      "result": null,
      "update": "20190403"
    },
    "Kaspersky": {
      "detected": false,
      "version": "15.0.1.13",
      "result": null,
      "update": "20190404"
    },
    "BitDefender": {
      "detected": false,
      "version": "7.2",
      "result": null,
      "update": "20190404"
    },
    "Babable": {
      "detected": false,
      "version": "9107201",
      "result": null,
      "update": "20180918"
    },
    "ViRobot": {
      "detected": false,
      "version": "2014.3.20.0",
      "result": null,
      "update": "20190404"
    },
    "Tencent": {
      "detected": false,
      "version": "1.0.0.1",
      "result": null,
      "update": "20190404"
    },
    "Ad-Aware": {
      "detected": false,
      "version": "3.0.5.370",
      "result": null,
      "update": "20190404"
    },
    "Sophos": {
      "detected": false,
      "version": "4.98.0",
      "result": null,
      "update": "20190403"
    },
    "Comodo": {
      "detected": false,
      "version": "30669",
      "result": null,
      "update": "20190404"
    },
    "F-Secure": {
      "detected": false,
      "version": "12.0.86.52",
      "result": null,
      "update": "20190404"
    },
    "DrWeb": {
      "detected": false,
      "version": "7.0.34.11020",
      "result": null,
      "update": "20190404"
    },
    "Zillya": {
      "detected": false,
      "version": "2.0.0.3788",
      "result": null,
      "update": "20190403"
    },
    "McAfee-GW-Edition": {
      "detected": false,
      "version": "v2017.3010",
      "result": null,
      "update": "20190403"
    },
    "CMC": {
      "detected": false,
      "version": "1.1.0.977",
      "result": null,
      "update": "20190321"
    },
    "Emsisoft": {
      "detected": false,
      "version": "2018.4.0.1029",
      "result": null,
      "update": "20190404"
    },
    "Ikarus": {
      "detected": false,
      "version": "0.1.5.2",
      "result": null,
      "update": "20190403"
    },
    "Avast-Mobile": {
      "detected": false,
      "version": "190403-00",
      "result": null,
      "update": "20190403"
    },
    "Jiangmin": {
      "detected": false,
      "version": "16.0.100",
      "result": null,
      "update": "20190404"
    },
    "Avira": {
      "detected": false,
      "version": "8.3.3.8",
      "result": null,
      "update": "20190404"
    },
    "Antiy-AVL": {
      "detected": false,
      "version": "3.0.0.1",
      "result": null,
      "update": "20190404"
    },
    "Kingsoft": {
      "detected": false,
      "version": "2013.8.14.323",
      "result": null,
      "update": "20190404"
    },
    "Microsoft": {
      "detected": false,
      "version": "1.1.15800.1",
      "result": null,
      "update": "20190404"
    },
    "AegisLab": {
      "detected": false,
      "version": "4.2",
      "result": null,
      "update": "20190404"
    },
    "ZoneAlarm": {
      "detected": false,
      "version": "1.0",
      "result": null,
      "update": "20190404"
    },
    "GData": {
      "detected": false,
      "version": "A:25.21394B:25.14765",
      "result": null,
      "update": "20190404"
    },
    "AhnLab-V3": {
      "detected": false,
      "version": "3.15.0.23609",
      "result": null,
      "update": "20190403"
    },
    "McAfee": {
      "detected": false,
      "version": "6.0.6.653",
      "result": null,
      "update": "20190404"
    },
    "MAX": {
      "detected": false,
      "version": "2018.9.12.1",
      "result": null,
      "update": "20190404"
    },
    "VBA32": {
      "detected": false,
      "version": "4.0.0",
      "result": null,
      "update": "20190403"
    },
    "Zoner": {
      "detected": false,
      "version": "1.0",
      "result": null,
      "update": "20190404"
    },
    "Rising": {
      "detected": false,
      "version": "25.0.0.24",
      "result": null,
      "update": "20190404"
    },
    "Yandex": {
      "detected": false,
      "version": "5.5.1.3",
      "result": null,
      "update": "20190402"
    },
    "TACHYON": {
      "detected": false,
      "version": "2019-04-04.02",
      "result": null,
      "update": "20190404"
    },
    "Fortinet": {
      "detected": false,
      "version": "5.4.247.0",
      "result": null,
      "update": "20190404"
    },
    "AVG": {
      "detected": false,
      "version": "18.4.3895.0",
      "result": null,
      "update": "20190404"
    },
    "Panda": {
      "detected": false,
      "version": "4.6.4.2",
      "result": null,
      "update": "20190403"
    },
    "Qihoo-360": {
      "detected": false,
      "version": "1.0.0.1120",
      "result": null,
      "update": "20190404"
    }
  },
  "scan_id": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78-1554363699",
  "sha1": "81c6c85debe165abad035c76a8795bc1620db89e",
  "resource": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78",
  "response_code": 1,
  "scan_date": "2019-04-04 07:41:39",
  "permalink": "https://www.virustotal.com/file/e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78/analysis/1554363699/",
  "verbose_msg": "Scan finished, information embedded",
  "total": 55,
  "positives": 0,
  "sha256": "e6690714abde2bd8f7ef3ebc5eab241141aa3dbd2dbb0e7d6da0ab3237cc6d78",
  "md5": "24b83828664d4e80137d18bc95135a64"
}

```

## Get your API KEY

and with the API key remember

      vt init
This command will ask for your API key, and save it to a config file in your home directory (~/.vt.toml)

```

 vt init

██╗   ██╗██╗██████╗ ██╗   ██╗███████╗████████╗ ██████╗ ████████╗ █████╗ ██╗
██║   ██║██║██╔══██╗██║   ██║██╔════╝╚══██╔══╝██╔═══██╗╚══██╔══╝██╔══██╗██║
██║   ██║██║██████╔╝██║   ██║███████╗   ██║   ██║   ██║   ██║   ███████║██║
╚██╗ ██╔╝██║██╔══██╗██║   ██║╚════██║   ██║   ██║   ██║   ██║   ██╔══██║██║
 ╚████╔╝ ██║██║  ██║╚██████╔╝███████║   ██║   ╚██████╔╝   ██║   ██║  ██║███████╗
  ╚═══╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝

VirusTotal Command-Line Interface: Threat Intelligence at your fingertips.

Enter your API key: 

```
