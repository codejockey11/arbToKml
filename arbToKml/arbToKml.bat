REM Must manually extract and edit ARB.txt for ZNYHIGH and ZWY
REM
REM ZNY *H*53734NEW YORK                                HIGH1     39-44-00.0N   073-17-00.0W  TO THE POINT OF BEGINNING                                                                                                                                                                                                                                                                                   033500 
REM ZNY *H*54910NEW YORK                                HIGH2     42-36-30.0N   076-48-10.0W  /COMMON ZNY-ZOB-ZBW/TO                                                                                                                                                                                                                                                                                      033510 

REM ZWY *F*51050NEW YORK OCEANIC FIR                    FIR ONLY  39-00-00.0N   067-00-00.0W  TO THE POINT OF BEGINNING EXCLUDING THAT PORTION WITHIN THE AIRSPACE AT AND BELOW FL500 WITHIN 180 NM RADIUS OF THE BERMUDA VOR (NEW YORK RADAR AREA)                                                                                                                                                       042240 
REM ZWY *G*51925NEW YORK OCEANIC FIR                    CTA       44-30-00.0N   040-00-00.0W  /COMMON NEW YORK OCEANIC CTA-GANDER OCEANIC CTA-SANTA MARIA CTA/FIR/ TO                                                                                                                                                                                                                                     042550 

REN ARB.txt save.txt

DEL arb*.kml

REN save.txt ARB.txt

arbToKml.exe ARB.txt

REM SET GDAL_DATA=C:\\Program Files\\QGIS 3.22.1\\apps\\gdal-dev\\data
REM SET GDAL_DRIVER_PATH=C:\\Program Files\\QGIS 3.22.1\\bin\\gdalplugins
REM SET OSGEO4W_ROOT=C:\\Program Files\\QGIS 3.22.1
REM SET PATH=%OSGEO4W_ROOT%\\bin;%PATH%
REM SET PYTHONHOME=%OSGEO4W_ROOT%\\apps\\Python37
REM SET PYTHONPATH=%OSGEO4W_ROOT%\\apps\\Python37

REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbBDRYZAN.shp"			"arbBDRYZAN.kml"		BDRYZAN
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbBDRYZAP.shp"			"arbBDRYZAP.kml"		BDRYZAP
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbBDRYZHN.shp"			"arbBDRYZHN.kml"		BDRYZHN
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbBDRYZHU.shp"			"arbBDRYZHU.kml"		BDRYZHU
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbBDRYZMA.shp"			"arbBDRYZMA.kml"		BDRYZMA
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbBDRYZSU.shp"			"arbBDRYZSU.kml"		BDRYZSU
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbCTAZAK.shp"			"arbCTAZAK.kml"			CTAZAK
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbCTAZWYY.shp"			"arbCTAZWYY.kml"		CTAZWYY
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbFIRONLYZAK.shp"		"arbFIR ONLYZAK.kml"	FIRONLYZAK
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbFIRONLYZAP.shp"		"arbFIR ONLYZAP.kml"	FIRONLYZAP
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbFIRONLYZWY.shp"		"arbFIR ONLYZWY.kml"	FIRONLYZWY
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZAB.shp"			"arbHIGHZAB.kml"		HIGHZAB
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZAN.shp"			"arbHIGHZAN.kml"		HIGHZAN
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZAU.shp"			"arbHIGHZAU.kml"		HIGHZAU
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZBW.shp"			"arbHIGHZBW.kml"		HIGHZBW
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZDC.shp"			"arbHIGHZDC.kml"		HIGHZDC
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZDV.shp"			"arbHIGHZDV.kml"		HIGHZDV
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZFW.shp"			"arbHIGHZFW.kml"		HIGHZFW
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZHU.shp"			"arbHIGHZHU.kml"		HIGHZHU
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZID.shp"			"arbHIGHZID.kml"		HIGHZID
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZJX.shp"			"arbHIGHZJX.kml"		HIGHZJX
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZKC.shp"			"arbHIGHZKC.kml"		HIGHZKC
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZLA.shp"			"arbHIGHZLA.kml"		HIGHZLA
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZLC.shp"			"arbHIGHZLC.kml"		HIGHZLC
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZMA.shp"			"arbHIGHZMA.kml"		HIGHZMA
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZME.shp"			"arbHIGHZME.kml"		HIGHZME
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZMP.shp"			"arbHIGHZMP.kml"		HIGHZMP
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZNY.shp"			"arbHIGHZNY.kml"		HIGHZNY
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZNYY.shp"			"arbHIGHZNYY.kml"		HIGHZNYY
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZOA.shp"			"arbHIGHZOA.kml"		HIGHZOA
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZOB.shp"			"arbHIGHZOB.kml"		HIGHZOB
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZSE.shp"			"arbHIGHZSE.kml"		HIGHZSE
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbHIGHZTL.shp"			"arbHIGHZTL.kml"		HIGHZTL
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZAB.shp"			"arbLOWZAB.kml"			LOWZAB
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZAN.shp"			"arbLOWZAN.kml"			LOWZAN
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZAU.shp"			"arbLOWZAU.kml"			LOWZAU
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZBW.shp"			"arbLOWZBW.kml"			LOWZBW
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZDC.shp"			"arbLOWZDC.kml"			LOWZDC
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZDV.shp"			"arbLOWZDV.kml"			LOWZDV
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZFW.shp"			"arbLOWZFW.kml"			LOWZFW
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZHU.shp"			"arbLOWZHU.kml"			LOWZHU
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZID.shp"			"arbLOWZID.kml"			LOWZID
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZJX.shp"			"arbLOWZJX.kml"			LOWZJX
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZKC.shp"			"arbLOWZKC.kml"			LOWZKC
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZLA.shp"			"arbLOWZLA.kml"			LOWZLA
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZLC.shp"			"arbLOWZLC.kml"			LOWZLC
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZMA.shp"			"arbLOWZMA.kml"			LOWZMA
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZME.shp"			"arbLOWZME.kml"			LOWZME
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZMP.shp"			"arbLOWZMP.kml"			LOWZMP
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZNY.shp"			"arbLOWZNY.kml"			LOWZNY
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZOA.shp"			"arbLOWZOA.kml"			LOWZOA
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZOB.shp"			"arbLOWZOB.kml"			LOWZOB
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZSE.shp"			"arbLOWZSE.kml"			LOWZSE
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbLOWZTL.shp"			"arbLOWZTL.kml"			LOWZTL
REM ogr2ogr.exe -f "ESRI Shapefile" -skipfailures "shape\\arbUTAZOA.shp"			"arbUTAZOA.kml"			UTAZOA
