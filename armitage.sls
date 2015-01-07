armitage_archive:
    archive.extracted:
      - name: /home/krustyhack/
      - source: http://www.fastandeasyhacking.com/download/armitage141120.tgz
      - source_hash: md5=a26827cad18767b011031bc52a247ce5
      - archive_format: tar
      - tar_options: v
      - if_missing: /home/krustyhack/armitage/

/home/krustyhack/armitage/armitage:
    file.symlink:
      - target: /usr/local/bin/armitage
/home/krustyhack/armitage/teamserver:
    file.symlink:
      - target: /usr/local/bin/teamserver

echo java -jar /home/krustyhack/armitage/armitage.jar \$\* > /home/krustyhack/armitage/armitage:
    cmd.run
perl -pi -e 's/armitage.jar/\/home\/krustyhack\/armitage\/armitage.jar/g' /home/krustyhack/armitage/teamserver:
    cmd.run