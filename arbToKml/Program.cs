using System;
using System.IO;
using aviationLib;

namespace arbToKml
{
    class Program
    {
        static StreamReader streamReader;
        static String record;

        static StreamWriter streamWriter;

        static String type;
        static String facility;
        static String prevTypeFacility;

        static LatLon begin;
        static LatLon latLon;

        static void WriteStartTags(StreamWriter writer)
        {
            writer.WriteLine("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");
            writer.WriteLine("<kml xmlns=\"http://www.opengis.net/kml/2.2\">");
            writer.WriteLine("<Document>");
            writer.WriteLine("\t<Style id=\"arbHigh\">");
            writer.WriteLine("\t\t<LineStyle>");
            writer.WriteLine("\t\t\t<color>FF006400</color>");
            writer.WriteLine("\t\t\t<width>2</width>");
            writer.WriteLine("\t\t</LineStyle>");
            writer.WriteLine("\t\t<PolyStyle>");
            writer.WriteLine("\t\t\t<color>1196FF5A</color>");
            writer.WriteLine("\t\t</PolyStyle>");
            writer.WriteLine("\t</Style>");
            writer.WriteLine("\t<Style id=\"arbLow\">");
            writer.WriteLine("\t\t<LineStyle>");
            writer.WriteLine("\t\t\t<color>FF5C5CCD</color>");
            writer.WriteLine("\t\t\t<width>2</width>");
            writer.WriteLine("\t\t</LineStyle>");
            writer.WriteLine("\t\t<PolyStyle>");
            writer.WriteLine("\t\t\t<color>118080F0</color>");
            writer.WriteLine("\t\t</PolyStyle>");
            writer.WriteLine("\t</Style>");
            writer.WriteLine("\t<Style id=\"arbOther\">");
            writer.WriteLine("\t\t<LineStyle>");
            writer.WriteLine("\t\t\t<color>FFFF6400</color>");
            writer.WriteLine("\t\t\t<width>2</width>");
            writer.WriteLine("\t\t</LineStyle>");
            writer.WriteLine("\t\t<PolyStyle>");
            writer.WriteLine("\t\t\t<color>1169FFA5</color>");
            writer.WriteLine("\t\t</PolyStyle>");
            writer.WriteLine("\t</Style>");
            writer.WriteLine("\t<Placemark>");
            writer.WriteLine("\t\t<name>" + facility + ":" + type + "</name>");
        }

        static void WriteEndTags(StreamWriter writer)
        {
            writer.WriteLine("\t</Placemark>");
            writer.WriteLine("</Document>");
            writer.WriteLine("</kml>");
        }

        static void WriteLinearRing(StreamWriter writer)
        {
            if (type.Contains("HIGH"))
            {
                writer.WriteLine("\t\t<styleUrl>#arbHigh</styleUrl>");
            }
            else if (type.Contains("LOW"))
            {
                writer.WriteLine("\t\t<styleUrl>#arbLow</styleUrl>");
            }
            else
            {
                writer.WriteLine("\t\t<styleUrl>#arbOther</styleUrl>");
            }

            writer.WriteLine("\t\t<Polygon>");
            writer.WriteLine("\t\t\t<outerBoundaryIs>");
            writer.WriteLine("\t\t\t\t<LinearRing>");
            writer.WriteLine("\t\t\t\t\t<coordinates>");
        }

        static void WriteEndLinearRing(StreamWriter writer)
        {
            writer.WriteLine("\t\t\t\t\t</coordinates>");
            writer.WriteLine("\t\t\t\t</LinearRing>");
            writer.WriteLine("\t\t\t</outerBoundaryIs>");
            writer.WriteLine("\t\t</Polygon>");
        }

        static void WriteBeginningPoint(StreamWriter writer)
        {
            writer.WriteLine("\t\t\t\t\t\t" + begin.decimalLon.ToString("F6") + "," + begin.decimalLat.ToString("F6") + ",100");
        }

        static void ProcessRec(String record)
        {
            facility = new String(record.ToCharArray(0, 4)).Trim();

            type = new String(record.ToCharArray(52, 10)).Trim();

            latLon = new LatLon(new String(record.ToCharArray(62, 14)).Trim(), new String(record.ToCharArray(76, 14)).Trim());

            if (prevTypeFacility != (type + facility))
            {
                WriteBeginningPoint(streamWriter);

                WriteEndLinearRing(streamWriter);

                WriteEndTags(streamWriter);

                streamWriter.Close();

                
                streamWriter = new StreamWriter("arb" + type + facility + ".kml");

                WriteStartTags(streamWriter);

                WriteLinearRing(streamWriter);

                
                begin = new LatLon(latLon.decimalLat.ToString("F6"), latLon.decimalLon.ToString("F6"));

                prevTypeFacility = type + facility;
            }

            streamWriter.WriteLine("\t\t\t\t\t\t" + latLon.decimalLon.ToString("F6") + "," + latLon.decimalLat.ToString("F6") + ",100");
        }

        static void Main(string[] args)
        {
            streamReader = new StreamReader(args[0], false);

            record = streamReader.ReadLine();


            facility = new String(record.ToCharArray(0, 4)).Trim();

            type = new String(record.ToCharArray(52, 10)).Trim();

            latLon = new LatLon(new String(record.ToCharArray(62, 14)).Trim(), new String(record.ToCharArray(76, 14)).Trim());

            begin = new LatLon(latLon.decimalLat.ToString("F6"), latLon.decimalLon.ToString("F6"));


            streamWriter = new StreamWriter("arb" + type + facility +".kml");


            WriteStartTags(streamWriter);

            WriteLinearRing(streamWriter);


            while (!streamReader.EndOfStream)
            {
                ProcessRec(record);

                record = streamReader.ReadLine();
            }

            ProcessRec(record);


            WriteBeginningPoint(streamWriter);

            WriteEndLinearRing(streamWriter);

            WriteEndTags(streamWriter);


            streamReader.Close();
            streamWriter.Close();
        }
    }
}
