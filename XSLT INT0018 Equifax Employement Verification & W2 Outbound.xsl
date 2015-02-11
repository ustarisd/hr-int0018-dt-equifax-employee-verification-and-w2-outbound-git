<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bc="urn:com.workday/bc"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xtt="urn:com.workday/xtt"
    xmlns:wd="urn:com.workday.report/DU_CR_INT0018_Equifax_W-2_BO"
    xmlns:etv="urn:com.workday/etv" xmlns:out="http://www.workday.com/integration/output"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    version="2.0" exclude-result-prefixes="xsd xsl bc out">


    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 3, 2014</xd:p>
            <xd:p><xd:b>Author:</xd:b> Darren Ustaris</xd:p>
            <xd:p>INT0018 Equifax Employment Verification and W2 Outbound Document Transform XSLT</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xd:doc>
        <xd:desc>
            <xd:p> Set the output method to xml</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:output method="xml" indent="yes"/>
    
    <xd:doc>
        <xd:desc>
            <xd:p>General Description of the template</xd:p>
        </xd:desc>
        <xd:param name="Param1">Header Record</xd:param>
        <xd:param name="Param2">Submitter Record</xd:param>
        <xd:param name="Param3">Detail Record</xd:param>
        <xd:param name="Param4">Control Record</xd:param>
        <xd:param name="Param5">Total Record</xd:param>
    </xd:doc>
  

    <xsl:template match="wd:Report_Data">
        
        <File >
            
            <!-- Header Record-->
            <HeaderRecord xtt:endTag="&#xA;">
                <RecordType xtt:fixedLength="2"><xsl:value-of select="wd:Report_Entry[1]/wd:CF_INT0018_TC_XR__Global_"/></RecordType>
                <FileFormat xtt:fixedLength="4"><xsl:value-of select="wd:Report_Entry[1]/wd:CF_INT0018_TC_X14__Global_"/></FileFormat>
                <FileFormatVersion xtt:fixedLength="8"><xsl:value-of select="wd:Report_Entry[1]/wd:CF_INT0018_TC_1__Global_"/></FileFormatVersion>
                <Filler xtt:fixedLength="3486"></Filler>
            </HeaderRecord>
 
   
            <!--Submitter Record-->
            <SubmitterRecord xtt:endTag="&#xA;">
                <Filler xtt:fixedLength="2"></Filler>
                <Filler xtt:fixedLength="1"></Filler>
                <Filler xtt:fixedLength="1"></Filler>
                <Filler xtt:fixedLength="9"></Filler>
                <Filler xtt:fixedLength="8"></Filler>
                <Filler xtt:fixedLength="9"></Filler>
                <Filler xtt:fixedLength="1"></Filler>
                <Filler xtt:fixedLength="6"></Filler>
                <Filler xtt:fixedLength="2"></Filler>
                <Filler xtt:fixedLength="57"></Filler>
                <Filler xtt:fixedLength="22"></Filler>
                <Filler xtt:fixedLength="22"></Filler>
                <Filler xtt:fixedLength="22"></Filler>
                <Filler xtt:fixedLength="2"></Filler>
                <Filler xtt:fixedLength="5"></Filler>
                <Filler xtt:fixedLength="4"></Filler>
                <Filler xtt:fixedLength="5"></Filler>
                <Filler xtt:fixedLength="23"></Filler>
                <Filler xtt:fixedLength="15"></Filler>
                <Filler xtt:fixedLength="2"></Filler>
                <Filler xtt:fixedLength="57"></Filler>
                <Filler xtt:fixedLength="22"></Filler>
                <Filler xtt:fixedLength="22"></Filler>
                <Filler xtt:fixedLength="22"></Filler>
                <Filler xtt:fixedLength="2"></Filler>
                <Filler xtt:fixedLength="5"></Filler>
                <Filler xtt:fixedLength="4"></Filler>
                <Filler xtt:fixedLength="5"></Filler>
                <Filler xtt:fixedLength="23"></Filler>
                <Filler xtt:fixedLength="15"></Filler>
                <Filler xtt:fixedLength="2"></Filler>
                <Filler xtt:fixedLength="27"></Filler>
                <Filler xtt:fixedLength="15"></Filler>
                <Filler xtt:fixedLength="5"></Filler>
                <Filler xtt:fixedLength="3"></Filler>
                <Filler xtt:fixedLength="40"></Filler>
                <Filler xtt:fixedLength="3"></Filler>
                <Filler xtt:fixedLength="10"></Filler>
                <Filler xtt:fixedLength="1"></Filler>
                <Filler xtt:fixedLength="1"></Filler>
                <Filler xtt:fixedLength="12"></Filler>
                <Filler xtt:fixedLength="2986"></Filler>
                
            </SubmitterRecord>
            
     
            
            
            <xsl:for-each select="wd:Report_Entry">
              
                <!--Data Record-->
               <DataRecord xtt:endTag="&#xA;">
                    
                   <RecordType xtt:fixedLength="2"><!--<xsl:text>DR</xsl:text>--></RecordType>
                   <AgentIndicatorCode xtt:fixedLength="1"></AgentIndicatorCode>
                   
                   <!--box b - Employer Identification number EIN-->
                   <EIN xtt:fixedLength="9"><xsl:value-of select="wd:b_-_Employer_identification_number__EIN_"/></EIN>
                   
                   <AuditVerificationNumber xtt:fixedLength="6"></AuditVerificationNumber>    
                   <AgentForEIN xtt:fixedLength="9"></AgentForEIN>
                   <TerminatingBusinessIndicator xtt:fixedLength="1"></TerminatingBusinessIndicator>
                   <EstablishmentNumber xtt:fixedLength="4"></EstablishmentNumber>
                   <KindofEmployer xtt:fixedLength="1"></KindofEmployer>
                   <OtherEIN xtt:fixedLength="9"></OtherEIN>
                   
                   <!--box c Employers name address and zip-->
                   <EmployerName xtt:fixedLength="57"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerName>
                   <EmployerAddress1 xtt:fixedLength="40"><xsl:value-of select="wd:CF_INT0018_CT_Employer_s_Address__W-2_"/></EmployerAddress1>
                   <EmployerAddress2 xtt:fixedLength="40"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerAddress2>
                   <EmployerAddress3 xtt:fixedLength="40"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerAddress3>
                   <EmployerCity xtt:fixedLength="25"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerCity>
                   <EmployerState xtt:fixedLength="2"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerState>
                   <EmployerZipCode xtt:fixedLength="5"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerZipCode>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <EmployerZipCodeExtension xtt:fixedLength="4"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerZipCodeExtension>
                   <EmployerforeignState xtt:fixedLength="23"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerforeignState>
                   <EmployerForeignPostal xtt:fixedLength="15"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerForeignPostal>
                   <EmployerForeignCountryName xtt:fixedLength="40"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployerForeignCountryName>
                   
                   <EmployerForeignAddressIndicator xtt:fixedLength="1"></EmployerForeignAddressIndicator>
                   <EmployerCountryCode xtt:fixedLength="2"></EmployerCountryCode>
                   <EmployerEmploymentCode xtt:fixedLength="1"></EmployerEmploymentCode>
                   <PrintVendorReservedFiller xtt:fixedLength="13"></PrintVendorReservedFiller>
                   <EmployerTaxJurisdictionCode xtt:fixedLength="1"></EmployerTaxJurisdictionCode>
                   <EmployerThirdPartySickPayIndicator xtt:fixedLength="1"></EmployerThirdPartySickPayIndicator>
                   <SortKey1 xtt:fixedLength="15"></SortKey1>
                   <SortKey2 xtt:fixedLength="15"></SortKey2>
                   
                   <!--box e Employees name-->
                   <SortKey3 xtt:fixedLength="15"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></SortKey3>
                   <EmployeeSSN xtt:fixedLength="9"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Social_Security_Number"/></EmployeeSSN>
                   <EmployeeFirstName xtt:fixedLength="15"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Legal_Name_-_First_Name"/></EmployeeFirstName>
                   <EmployeeMiddleName xtt:fixedLength="15"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Legal_Name_-_Middle_Name"/></EmployeeMiddleName>
                   <EmployeeLastName xtt:fixedLength="20"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Legal_Name_-_Last_Name"/></EmployeeLastName>
                   <PrintVendorREservedFiller xtt:fixedLength="10"></PrintVendorREservedFiller>
                   <EmployeeSuffix xtt:fixedLength="4"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Legal_Name_-_Social_Suffix"/></EmployeeSuffix>
                   <EmployeeAddress2 xtt:fixedLength="40"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Primary_Address_-_Formatted_Line_1"/></EmployeeAddress2>
                   <EmployeeAddress3 xtt:fixedLength="40"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Primary_Address_-_Formatted_Line_2"/></EmployeeAddress3>
                   <EmployeeCity xtt:fixedLength="25"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Primary_Address_-_City"/></EmployeeCity>
                   <EmployeeStateAbbrev xtt:fixedLength="2"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:CF_INT0018_LRV_Primary_Address_State_Code__Worker_"/></EmployeeStateAbbrev>
                   <EmployeeZipCode xtt:fixedLength="5"><xsl:value-of select="wd:Worker_from_Primary_W-2/wd:Primary_Address_-_Postal_Code"/></EmployeeZipCode>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <EmployeeZipCodeExtension xtt:fixedLength="4"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployeeZipCodeExtension>
                   <EmployeeForeignState xtt:fixedLength="23"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployeeForeignState>
                   <EmployeeForeignPostalCode xtt:fixedLength="15"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployeeForeignPostalCode>
                   <EmployeeCountryName xtt:fixedLength="40"><!--<xsl:value-of select="wd:State_Withholding_SUI_-_EIN"/>--></EmployeeCountryName>
                   
                   <EmployeeCountryCode xtt:fixedLength="2"></EmployeeCountryCode>
                   <CopyAStatementFlag xtt:fixedLength="1"></CopyAStatementFlag>
                   <W-3StatementFlag xtt:fixedLength="1"></W-3StatementFlag>
                   <AdditionalW-2StatementFlag xtt:fixedLength="1"></AdditionalW-2StatementFlag>
                   <MailFlag xtt:fixedLength="1"></MailFlag>
                   <DataPrintProofFlag xtt:fixedLength="1"></DataPrintProofFlag>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                  
                   <!--box 1 wages tips and other comp-->
                   <WagesTipsOtherComp xtt:fixedLength="11"><xsl:value-of select="wd:Box_1"/></WagesTipsOtherComp>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 2 federal income tax withheld-->
                   <FederalIncomeTaxWithheld xtt:fixedLength="11"><xsl:value-of select="wd:Box_2"/></FederalIncomeTaxWithheld>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 3 social security wages-->
                   <SocialSecurityWages xtt:fixedLength="11"><xsl:value-of select="wd:Box_3"/></SocialSecurityWages>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                  <!-- box 4 social security tax withheld-->
                   <SocialSecurityTaxWithheld xtt:fixedLength="11"><xsl:value-of select="wd:Box_4"/></SocialSecurityTaxWithheld>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 5 meidcare wages and tips-->
                   <MedicareWagesAndTips xtt:fixedLength="11"><xsl:value-of select="wd:Box_5"/></MedicareWagesAndTips>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 6 medicare tax withheld-->
                   <MedicareTaxWithheld xtt:fixedLength="11"><xsl:value-of select="wd:Box_6"/></MedicareTaxWithheld>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 7 social security tips-->
                   <SocialSecurityTips xtt:fixedLength="11"><xsl:value-of select="wd:Box_7"/></SocialSecurityTips>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                  <!-- box 10 Dependent Care Benefits-->
                   <DependentCareBenefits xtt:fixedLength="11"></DependentCareBenefits>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <DefferedCompContributions xtt:fixedLength="11"></DefferedCompContributions>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <Contributionsto401k xtt:fixedLength="11"></Contributionsto401k>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <Contributionsto403b xtt:fixedLength="11"></Contributionsto403b>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <Contributionsto406k xtt:fixedLength="11"></Contributionsto406k>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <Contributionsto457b xtt:fixedLength="11"></Contributionsto457b>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <Contributionsto501c xtt:fixedLength="11"></Contributionsto501c>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 11 Non-qualified pension YTD-->
                   <NonQualifiedPlan xtt:fixedLength="11"></NonQualifiedPlan>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <NonQualifiedSection457 xtt:fixedLength="11"></NonQualifiedSection457>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <NonQualifiedNOTSection457 xtt:fixedLength="11"></NonQualifiedNOTSection457>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <EmployerCostofPremiums xtt:fixedLength="11"></EmployerCostofPremiums>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <IncomefromNonstatutoryStockoptions xtt:fixedLength="11"></IncomefromNonstatutoryStockoptions>
                 
                  <!-- box 12A - uncollected SS tax on tips, box 12B uncollected medicare tax on tips-->
                   <Box12LetterCodeLine1 xtt:fixedLength="2"><xsl:value-of select="wd:XMLNAME_12a_Code"/></Box12LetterCodeLine1>
                   <Box12ValueLine1 xtt:fixedLength="11"><xsl:value-of select="wd:Box_12A"/></Box12ValueLine1>
                   <Box12LetterCodeLine2 xtt:fixedLength="2"><xsl:value-of select="wd:XMLNAME_12b_Code"/></Box12LetterCodeLine2>
                   <Box12ValueLine2 xtt:fixedLength="11"><xsl:value-of select="wd:Box_12B"/></Box12ValueLine2>
                   <Box12LetterCodeLine3 xtt:fixedLength="2"><xsl:value-of select="wd:XMLNAME_12c_Code"/></Box12LetterCodeLine3>
                   <Box12ValueLine3 xtt:fixedLength="11"><xsl:value-of select="wd:Box_12C"/></Box12ValueLine3>
                   <Box12LetterCodeLine4 xtt:fixedLength="2"><xsl:value-of select="wd:XMLNAME_12d_Code"/></Box12LetterCodeLine4>
                   <Box12ValueLine4 xtt:fixedLength="11"><xsl:value-of select="wd:Box_12D"/></Box12ValueLine4>
                   <Box12LetterCodeLine5 xtt:fixedLength="2"><!--<xsl:value-of select="wd:Box_12A"/>--></Box12LetterCodeLine5>
                   <Box12ValueLine5 xtt:fixedLength="11"><!--<xsl:value-of select="wd:Box_12B"/>--></Box12ValueLine5>
                   
                   <!--box 14 SUI/ disability insurance-->
                   <Box14Title1 xtt:fixedLength="20"></Box14Title1>
                   <Box14Value1 xtt:fixedLength="11"><!--<xsl:value-of select="wd:Box14"/>--></Box14Value1>
                   <Box14Title2 xtt:fixedLength="20"></Box14Title2>
                   <Box14Value2 xtt:fixedLength="11"></Box14Value2>
                   <Box14Title3 xtt:fixedLength="20"></Box14Title3>
                   <Box14Value3 xtt:fixedLength="11"></Box14Value3>
                   <Box14Title4 xtt:fixedLength="20"></Box14Title4>
                   <Box14Value4 xtt:fixedLength="11"></Box14Value4>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 13 statutory employee, retirement plan box, thrid party sick pay-->
                   <StatutoryEmployeeIndicator xtt:fixedLength="1"></StatutoryEmployeeIndicator>
                   <RetirementPlanIndicator xtt:fixedLength="1"></RetirementPlanIndicator>
                   <ThirdPartySickPayIndicator xtt:fixedLength="1"></ThirdPartySickPayIndicator>
                   <StateReportingFlag1 xtt:fixedLength="1"></StateReportingFlag1>
                   <PrintVendorReservedFiller xtt:fixedLength="14"></PrintVendorReservedFiller>
                   
                   <!--box 15-1 state - employers state ID number-->
                   <StateCode1 xtt:fixedLength="2"><!--<xsl:value-of select="wd:Box_15"/>--></StateCode1>
                   
                   
                   <OptionalCode1 xtt:fixedLength="2"></OptionalCode1>
                   <PrintVendorReservedFiller xtt:fixedLength="2"></PrintVendorReservedFiller>
                   <ReportingPeriod1 xtt:fixedLength="6"></ReportingPeriod1>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <StateQuarterlyUnemploymentInsurenceTotalWages1 xtt:fixedLength="11"></StateQuarterlyUnemploymentInsurenceTotalWages1>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <StateQuarterlyUnemploymentInsurenceTotalTaxableWages1 xtt:fixedLength="11"></StateQuarterlyUnemploymentInsurenceTotalTaxableWages1>
                   <NumberofWeeksWorked1 xtt:fixedLength="2"></NumberofWeeksWorked1>
                   <DateFirstEmployed1 xtt:fixedLength="8"></DateFirstEmployed1>
                   <DateofSeparation1 xtt:fixedLength="8"></DateofSeparation1>
                   <TaxingEntityCode1 xtt:fixedLength="5"></TaxingEntityCode1>
                   
                   <!--box 15-1 state employers state ID number-->
                   <StateEmployerAccoutNumber1 xtt:fixedLength="15"><xsl:value-of select="wd:Box_15"/></StateEmployerAccoutNumber1>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 16-1 state wages tips, etc.-->
                   <StateTaxableWages1 xtt:fixedLength="11"><xsl:value-of select="wd:Box_16"/></StateTaxableWages1>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 17-1 state income tax-->
                   <StateIncomeTaxWithheld1 xtt:fixedLength="11"><xsl:value-of select="wd:Box_17"/></StateIncomeTaxWithheld1>
                   
                   <OtherStateData1 xtt:fixedLength="10"></OtherStateData1>
                   <StateControlNumber1 xtt:fixedLength="7"></StateControlNumber1>
                   <LocalReportingFlag1 xtt:fixedLength="1"></LocalReportingFlag1>
                   <TaxTypeCode1 xtt:fixedLength="1"></TaxTypeCode1>
                   <LocalTaxingEntityCode1 xtt:fixedLength="5"></LocalTaxingEntityCode1>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 18-1 local wages tips etc.-->
                   <LocalTaxableWages1 xtt:fixedLength="11"><!--<xsl:value-of select="wd:Box18"/>--></LocalTaxableWages1>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   
                   <!--box 19-1 local income tax-->
                   <LocalIncomeTaxWithheld1 xtt:fixedLength="11"><!--<xsl:value-of select="wd:Box19"/>--></LocalIncomeTaxWithheld1>
                   
                   <!--box 20 locality name-->
                   <LocalAlphaName1 xtt:fixedLength="16"></LocalAlphaName1>
                 
                   <StateReportingFlag2 xtt:fixedLength="1"></StateReportingFlag2>
                   <PrintVendorReservedFiller xtt:fixedLength="14"></PrintVendorReservedFiller>
                   <StateCode2 xtt:fixedLength="2"></StateCode2>
                   <OptionalCod2 xtt:fixedLength="2"></OptionalCod2>
                   <PrintVendorReservedFiller xtt:fixedLength="2"></PrintVendorReservedFiller>
                   <ReportingPeriod2 xtt:fixedLength="6"></ReportingPeriod2>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <StateQuarterlyUnemploymentInsurenceTotalWages2 xtt:fixedLength="11"></StateQuarterlyUnemploymentInsurenceTotalWages2>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <StateQuarterlyUnemploymentInsurenceTotalTaxableWages2 xtt:fixedLength="11"></StateQuarterlyUnemploymentInsurenceTotalTaxableWages2>
                   <NumberofWeeksWorked2 xtt:fixedLength="2"></NumberofWeeksWorked2>
                   <DateFirstEmployed2 xtt:fixedLength="8"></DateFirstEmployed2>
                   <DateofSeparation2 xtt:fixedLength="8"></DateofSeparation2>
                   <TaxingEntityCode2 xtt:fixedLength="5"></TaxingEntityCode2>
                   
                   <!--box 15-2-->
                   <StateEmployerAccoutNumber2 xtt:fixedLength="15"></StateEmployerAccoutNumber2>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <StateTaxableWages2 xtt:fixedLength="11"></StateTaxableWages2>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <StateIncomeTaxWithheld2 xtt:fixedLength="11"></StateIncomeTaxWithheld2>
                   
                   
                   <OtherStateData2 xtt:fixedLength="10"></OtherStateData2>
                   <StateControlNumber2 xtt:fixedLength="7"></StateControlNumber2>
                   <LocalReportingFlag2 xtt:fixedLength="1"></LocalReportingFlag2>
                   <TaxTypeCode2 xtt:fixedLength="1"></TaxTypeCode2>
                   <LocalTaxingEntityCode2 xtt:fixedLength="5"></LocalTaxingEntityCode2>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <LocalTaxableWages2 xtt:fixedLength="11"></LocalTaxableWages2>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <LocalIncomeTaxWithheld2 xtt:fixedLength="11"></LocalIncomeTaxWithheld2>
                   <LocalAlphaName2 xtt:fixedLength="16"></LocalAlphaName2>
                   
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <AllocatedTips xtt:fixedLength="11"></AllocatedTips>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <UncollectedEmployeeTaxonTips xtt:fixedLength="11"></UncollectedEmployeeTaxonTips>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <MedicalSavingsAccount xtt:fixedLength="11"></MedicalSavingsAccount>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <SimpleREtirementAccount xtt:fixedLength="11"></SimpleREtirementAccount>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <QualifiedAdoptionExpenses xtt:fixedLength="11"></QualifiedAdoptionExpenses>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <UncollectedSocailSecurity xtt:fixedLength="11"></UncollectedSocailSecurity>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <UncollectedMedicareTax xtt:fixedLength="11"></UncollectedMedicareTax>
                  
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="9"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   
                   <EmployeeEmailAddress xtt:fixedLength="70"></EmployeeEmailAddress>
                   <PrintVendorReservedFiller xtt:fixedLength="9"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="13"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="7"></PrintVendorReservedFiller>
                   
                   <!--box 12-->
                   <Box12YearLine1 xtt:fixedLength="2"></Box12YearLine1>
                   <Box12YearLine2 xtt:fixedLength="2"></Box12YearLine2>
                   <Box12YearLine3 xtt:fixedLength="2"></Box12YearLine3>
                   <Box12YearLine4 xtt:fixedLength="2"></Box12YearLine4>
                   <Box12YearLine5 xtt:fixedLength="2"></Box12YearLine5>
                   
                   <PrintVendorReservedFiller xtt:fixedLength="220"></PrintVendorReservedFiller>
                   <EquifaxEmployerCode xtt:fixedLength="5"></EquifaxEmployerCode>
                   <EquifaxEmployeePIN xtt:fixedLength="8"></EquifaxEmployeePIN>
                   <SpecialEquifaxField xtt:fixedLength="26"></SpecialEquifaxField>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="29"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="29"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="29"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="29"></PrintVendorReservedFiller>
                   
                   
                   <UniqueStateProcessing1 xtt:fixedLength="80"></UniqueStateProcessing1>
                   <UniqueStateProcessing2 xtt:fixedLength="80"></UniqueStateProcessing2>
                   <SourceFileName xtt:fixedLength="120"></SourceFileName>
                   <SourceFileLineNumber xtt:fixedLength="8"></SourceFileLineNumber>
                   <EmployeeID xtt:fixedLength="64"></EmployeeID>
                   <AgentReportingIndicator xtt:fixedLength="1"></AgentReportingIndicator>
                   <AgentforEmployerName xtt:fixedLength="47"></AgentforEmployerName>
                   <EmployerContributionstoaHSA xtt:fixedLength="11"></EmployerContributionstoaHSA>
                   <EmployeeStatusCode xtt:fixedLength="1"></EmployeeStatusCode>
                   <NontaxableCombatPay xtt:fixedLength="11"></NontaxableCombatPay>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <Deferralsundersection409A xtt:fixedLength="11"></Deferralsundersection409A>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <IncomeUnderNonqualifiedDeferredComp xtt:fixedLength="11"></IncomeUnderNonqualifiedDeferredComp>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <DesignatedRothContributions401k xtt:fixedLength="11"></DesignatedRothContributions401k>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <DesignatedRothUnder403b xtt:fixedLength="11"></DesignatedRothUnder403b>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <CodeRVStateTotalREcord1 xtt:fixedLength="510"></CodeRVStateTotalREcord1>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <CodeRVStateTotalREcord2 xtt:fixedLength="510"></CodeRVStateTotalREcord2>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="11"></PrintVendorReservedFiller>
                   <PrintVendorReservedFiller xtt:fixedLength="33"></PrintVendorReservedFiller>
                   <CostofEmployerSponsoredHealthCoverage xtt:fixedLength="11"></CostofEmployerSponsoredHealthCoverage>
                   <PrintVendorReservedFiller xtt:fixedLength="1"></PrintVendorReservedFiller>
                   <DesignatedRothUnder457bPlan xtt:fixedLength="11"></DesignatedRothUnder457bPlan>
                    
                   
                </DataRecord>
               
            </xsl:for-each>
           
            <!-- Control Record-->
            <ControlRecord xtt:endTag="&#xA;">
                <Filler xtt:fixedLength="3500"></Filler>
            </ControlRecord>
           

            <!--Total Record-->
            <TotalRecord xtt:endTag="&#xA;">
                <filler xtt:fixedLength="3500"></filler>
            </TotalRecord>
            
         
            
        </File>
    </xsl:template>

    
</xsl:stylesheet>