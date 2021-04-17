    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lt.viko.eif.vsubotkovski.companytopdf;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.xmlgraphics.util.MimeConstants;

/**
 * Class which is dedicated to transform XML file to PDF.
 * 
 * @author valde
 */
public class CompanyToPDF {

    /**
     * Main method which runs convertToPDF() method.
     * 
     * @param args 
     */
    public static void main(String[] args) {
        try {
            convertToPDF();
        } catch (FOPException | IOException | TransformerException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Method dedicated to transform XML file to PDF.
     * 
     * @throws TransformerException
     * @throws IOException
     * @throws FOPException 
     */
    public static void convertToPDF() throws TransformerException, IOException, FOPException {
        File xsltFile = new File("company-topdf.xsl");
        StreamSource xmlSource = new StreamSource(new File("company.xml"));
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();

        OutputStream out;
        out = new java.io.FileOutputStream("output.pdf");

        try {
            // Construct FOP with desired output format
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);
            // Setup XSLT
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));

            Result res = new SAXResult(fop.getDefaultHandler());
            transformer.transform(xmlSource, res);
        } finally {
            out.close();
        }
    }
}
