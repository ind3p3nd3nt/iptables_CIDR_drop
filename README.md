---INTRODUCTION---
This script will configure your linux firewall to block your computer from accessing some IPv4 ranges and your computer being accessed by those IPv4 ranges.

	---INSTALLATION---
		# git clone https://github.com/independentcod/iptables_CIDR_drop.git
		# cd iptables_CIDR_drop
		# chmod +x ./setup.sh && ./setup.sh
	
	It's easy as that.

---IMPORTANT--- If you do not wish to block Google (because blocking Google will break viewing many websites) Simply delete first line in CIDR.txt and execute setup.sh

---TIP--- You should replace your DNS nameserver from 8.8.8.8 & 8.8.4.4 to 1.1.1.1 & 1.0.0.1 to avoid Google tracking your DNS queries. Also consider changing search engine to DuckDuckGo.com
---TRICK--- If you have a problem connecting a certain website, go to https://hackertarget.com/find-dns-host-records/ find all corresponding CIDR, delete them and re-run setup.sh.

This BASH script was made for use by beginners but could also be usefull for an expert.
Don't forget that if you like this code, you should give a star back to this repo.
Enjoy and thanks for using my script.

<End Of Help>
