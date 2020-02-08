SELECT PE.NAME, PE.DNI, PE.FIRSTSURNAME, PE.SECONDSURNAME, PE.TELEPHONE, PE.ADDRESS, PA.SIPNUMBER
FROM person PE
INNER JOIN patient PA ON PE.Id = PA.Id
WHERE PE.DNI = '22543281Z';

SELECT * FROM hospitalization H WHERE H.PATIENTID = (SELECT P.Id FROM person P WHERE P.DNI = '22543281Z' AND rownum = 1);

SELECT * FROM observation O WHERE O.HOSPITALIZATIONID IN (
    SELECT H.Id FROM hospitalization H WHERE H.PATIENTID = (SELECT P.Id FROM person P WHERE P.DNI = '22543281Z' AND rownum = 1));

SELECT * FROM treatment T WHERE T.HOSPITALIZATIONID IN (
    SELECT H.Id FROM hospitalization H WHERE H.PATIENTID = (SELECT P.Id FROM person P WHERE P.DNI = '22543281Z' AND rownum = 1));