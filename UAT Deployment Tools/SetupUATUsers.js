var setupFacade = runtimeBeanManager.lookupBean("setupFacade");
var userInfoXmlFile =  "./ext/custom/SetupData/DataFiles/NonImisUsers.xml";
setupFacade.createUsers(userInfoXmlFile);
