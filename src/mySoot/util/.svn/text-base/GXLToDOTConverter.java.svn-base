package mySoot.util;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

public class GXLToDOTConverter {
	
	LinkedHashMap<String, GXLNode> idToNodeMap = new LinkedHashMap<String, GXLNode>();
	List<GXLEdge> edges = new ArrayList<GXLEdge>();
	
	public static void main(String[] args){
		GXLToDOTConverter converter = new GXLToDOTConverter();
		converter.parse(args[0]);
		converter.generateDot(args[0]);
	}
	
	public void generateDot(String oldFilename){
		String filename = oldFilename.substring(0, oldFilename.indexOf(".")) + ".dot";
		File file = new File(filename);
		if(file.exists()){
			file.delete();
		}
		
		try{
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(filename, true)));
		    out.println("digraph G {");
		    for(GXLEdge e : edges){
		    	out.println(e.dump());
		    }
		    out.println("}");
			out.close();
		}catch(FileNotFoundException ex) {
			System.err.println("Can't find file " + filename);
			System.exit(-1);
		}catch(IOException ex) {
			System.err.println("IOException!");
			System.exit(-1);
		}
	}

	public void parse(String filename){
		
		try {

			File fXmlFile = new File(filename);
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(fXmlFile);

			//optional, but recommended
			//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
			doc.getDocumentElement().normalize();

			//System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("node");

			//System.out.println("----------------------------");

			for (int temp = 0; temp < nList.getLength(); temp++) {

				Node nNode = nList.item(temp);

				//System.out.println("\nCurrent Element :" + nNode.getNodeName());

				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;
					String id = eElement.getAttribute("id");
					String packageName = eElement.getElementsByTagName("attr").item(0).getTextContent();
					String funcCategory = eElement.getElementsByTagName("attr").item(1).getTextContent();
					String funcProto = eElement.getElementsByTagName("attr").item(2).getTextContent();
					String entryPoints = eElement.getElementsByTagName("attr").item(3).getTextContent();
					String params = eElement.getElementsByTagName("attr").item(4).getTextContent();
					GXLNode gxlNode = new GXLNode(id, packageName, funcCategory, funcProto, entryPoints, params);
					idToNodeMap.put(id, gxlNode);					

					/*
					System.out.println("Node id : " + eElement.getAttribute("id"));
					System.out.println("package name : " + eElement.getElementsByTagName("attr").item(0).getTextContent());
					System.out.println("function category : " + eElement.getElementsByTagName("attr").item(1).getTextContent());
					System.out.println("function prototype : " + eElement.getElementsByTagName("attr").item(2).getTextContent());
					System.out.println("entry points : " + eElement.getElementsByTagName("attr").item(3).getTextContent());
					System.out.println("parameters " + eElement.getElementsByTagName("attr").item(4).getTextContent());
					*/
				}
			}
			
			NodeList edgeList = doc.getElementsByTagName("edge");
			
			for (int i=0;i<edgeList.getLength();i++){
				Node edgeNode = edgeList.item(i);
				
				//System.out.println("\nCurrent Element :" + edgeNode.getNodeName());

				if (edgeNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) edgeNode;
					String fromId = eElement.getAttribute("from");
					String toId = eElement.getAttribute("to");
					
					String fromEP = idToNodeMap.get(fromId).entryPoints;
					if(fromEP == null || fromEP.equals("") || fromEP.equals(" ")){
						fromEP = "Non-UI";
					}
					String toEP = idToNodeMap.get(toId).entryPoints;
					if(toEP == null || toEP.equals("") || toEP.equals(" ")){
						toEP = "Non-UI";
					}
					
					String from = fromEP + ": " + idToNodeMap.get(fromId).funcProto + "_" + fromId;
					String to = toEP + ": " + idToNodeMap.get(toId).funcProto + "_" + toId;
					
					GXLEdge gxlEdge = new GXLEdge(from, to);
					edges.add(gxlEdge);
					/*
					System.out.println("Edge from: " + eElement.getAttribute("from"));
					System.out.println("Edge to: " + eElement.getAttribute("to"));
					*/

				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	class GXLNode{
		String id;
		String packageName;
		String funcCategrory;
		String funcProto;
		String entryPoints;
		String params;
		
		public GXLNode(String id, String pn, String fc, String fp, String ep, String pa){
			this.id = id;
			this.packageName = pn;
			this.funcCategrory = fc;
			this.funcProto = fp;
			this.entryPoints = ep;
			this.params = pa;
		}
	}
	
	class GXLEdge{
		String from;
		String to;
		
		public GXLEdge(String from, String to){
			this.from = from;
			this.to = to;
		}
		
		public String dump(){
			return "    \"" + from.replace("\"", "\'") + "\" -> \"" + to.replace("\"", "\'") + "\";";
		}
	}
}