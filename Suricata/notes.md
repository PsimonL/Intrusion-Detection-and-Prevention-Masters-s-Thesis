# Suricata - Instrusion Detection


I. Resources:
- https://docs.suricata.io/en/latest/install.html#binary-packages
- https://suricata.io/
- https://www.youtube.com/watch?v=UXKbh0jPPpg&t=108s&ab_channel=HackerSploit
- https://www.cisco.com/c/en/us/training-events/training-certifications/training/training-services/courses/securing-cisco-networks-with-open-source-snort-ssfsnort.html

**Suricata is successor of Snort developed by Cisco.**

II . Config of: /etc/suricata/suricata.yaml
1. Go to "address-groups" -  and configure specific NET value for better performance and alert accurancy:  
```
172.20.136.1/16
```
2. Go to "af-packet" - change to correct interface:  
```
ens18
```
To add another interface just copy and paste whole "af-packet" section. Remmeber to change cluster-id to some other value.
3. Go to "pcap" - change to correct interface, also:
```
ens18
```
4. Search for "community-id", by default should be **false**, change it to **true**.

5. Fetch rules, which will be done be default at url: https://rules.emergingthreats.net/open/suricata-7.0.3/
```
sudo suricata-update
```

6. Search for "default-rule-path":
Suricata rules can be acccesed at both paths:
```
/var/lib/suricata/rules
/usr/share/suricata/rules
```
Some older versions of  Suricata can place them at:
```
/etc/suricata/rules
```
More explanation in that matter:  
https://forum.suricata.io/t/var-lib-suricata-rules-directory-or-usr-share-suricata-rules-directory/6807

Basically deafult path rules:
```
default-rule-path: /var/lib/suricata/rules

rule-files:
  - suricata.rules
```
Any custom stuff - example:
```
default-rule-path: /var/lib/suricata/rules

rule-files:
  - suricata.rules
  - /etc/suricata/rules/local.rules
```

7. Suricata stores logs at path:
```
/var/log/suricata
```
- fast.log -> contains instrusion logs in standard output format
- eve.json -> intrusion logs in json format

To test suricata - used to test IDS:
```
curl http://testmynids.org/uid/index.html
```
aaaaaa
```
sudo cat /var/log/suricata/fast.log
```

8. Custom rules:
- Create custom rules file:
```
sudo vi /etc/suricata/rules/local.rules
```
- Syntax is exactly same like in **Snort**.
Example:
```
```
- Go to suricata.yaml and add row to "rule-files".
```
rule-files:
  - suricata.rules
  - /etc/suricata/rules/local.rules
```

Reload service.

9. Try ping or go back to 7th step procedure, than:
```
sudo cat /var/log/suricata/fast.log
sudo apt-get install jq
```
sudo tail -f /var/log/suricata/eve.json | jq 'select(.event_type=="alert")'
