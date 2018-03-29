@echo off
set /p pwd="Enter Administrator Password: "
curl -X GET "http://localhost:61400/rest/service/collections?hierarchy=true&workflows=true&groups=true&users=true&revisioncontrols=true&jobjackets=true&routings=true&loginname=Admin&loginpassword=%pwd%" > collections.xml
curl -X GET "http://localhost:61400/rest/service/admin/users?loginname=Admin&loginpassword=%pwd%" > users.xml
curl -X GET "http://localhost:61400/rest/service/admin/groups?loginname=Admin&loginpassword=%pwd%" > groups.xml
curl -X GET "http://localhost:61400/rest/service/admin/roles?loginname=Admin&loginpassword=%pwd%" > roles.xml
curl -X GET "http://localhost:61400/rest/service/admin/workflows?loginname=Admin&loginpassword=%pwd%" > workflows.xml
curl -X GET "http://localhost:61400/rest/service/admin/attributes?loginname=Admin&loginpassword=%pwd%" > attributes.xml
curl -X GET "http://localhost:61400/rest/service/admin/contenttypes?loginname=Admin&loginpassword=%pwd%" > contenttypes.xml
curl -X GET "http://localhost:61400/rest/service/searchdefinitions?conditions=true&display=true&context=true&sharedsearchtrustees=true&loginname=Admin&loginpassword=%pwd%" > searchdefinitions.xml