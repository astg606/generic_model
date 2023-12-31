# Sample Fortran Code and Project

We have two ASCII files (`Blodgett_DataFile.txt` and `FortPeck_DataFile.txt`)
contaning real ground observation data. Each file has the following information:

- Station name
- Lat/Lon coordinate
- Start Date/Time of the records
- Frequency of the records ( for instance 30 minutes)
- Observation data (in rows) for temperature, humidity, wind, 
    precipation, radiation, etc.
    - There is an arbitrary number of records covering several years.
 
We want to be able to:
1. For a given field, count the number of records that are greater 
   than a prescribed value
2. Get the the obersevation value of a field for a given date/time
3. Compute the seasonal (for instance July-Aug-Sep) average of a given field
4. Compute the annual average of a given field
5. Compare data of a field for the same month of two different years

We have already written two sets supporting subroutines based on a derived type
for the first set and on a class for the second set. 
The subroutines perform the operations such as:

- Read in all the data of an observation file
- Given a Date (in the format yyyymmdd) and a Time (in the format hhmmss)
  return the record number in the file
- Given a record number, return the Date/Time
- etc.

We also wrote two programs (with derived type and class) that tests these
operations.

Using what has already been done, update either the module handling
the derived type or the module supporting the class to be able to solve
Items 1-5. You may want to focus on one field (say temperature) only.
