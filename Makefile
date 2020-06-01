all: 
release.yml: containers-bosh.yml docker-compose.yml
	spruce merge containers-bosh.yml >release.yml
	
deploy: release.yml
	bosh deploy -d config-server release.yml
	
fdeploy: 
	bosh deploy -d config-server release.yml
