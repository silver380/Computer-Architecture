import javax.swing.*;
import java.io.*;
import java.util.HashMap;

public class Main {
    static HashMap<String, String> opCode = new HashMap<>() {{
        put("add",  "0000");
        put("addi", "0001");
        put("load", "0010");
        put("save", "0011");
        put("beq",  "0100");
        put("jmp",  "0101");
        put("and",  "0110");
        put("or" ,  "0111");
        put("not",  "1000");
    }};

    static HashMap<String, String> registers  = new HashMap<>() {{
        put("a", "0000");
        put("b", "0001");
        put("c", "0010");
        put("d", "0011");
        put("e", "0100");
        put("f", "0101");
        put("g", "0110");
        put("h", "0111");
        put("i", "1000");
        put("j", "1001");
        put("k", "1010");
        put("l", "1011");
        put("m", "1100");
        put("n", "1101");
        put("o", "1110");
        put("p", "1111");
    }};

    static HashMap<String, Integer> labels;

    public static void main(String[] args) {
        read();
    }

    public static void read() {
        JFileChooser fileChooser = new JFileChooser();
        fileChooser.showOpenDialog(null);
        while (true) {
            File file = fileChooser.getSelectedFile();
            if (!file.getName().endsWith(".asm")) {
                showDialog("Please choose the correct file.");
                continue;
            }
            readLabels(file);
            read(file);
            break;
        }

    }

//    private static String toHex(String[] params) {
//        switch (params[0]) {
//
//        }
//    }

    private static void read(File file) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String row = "";
            while (true) {
                row = reader.readLine();
                if (row == null)
                    break;
                if(row.contains("#"))
                    row = row.substring(0, row.indexOf("#") - 1);

                if (!row.endsWith(":")) {
                    String[] params = row.replaceAll(",", "").split("[ \t]+");
                    for (String a : params)
                        System.out.println(a);
                }
                System.out.println(row);
            }
        } catch (IOException e) {
            showDialog("File is damaged.");
        }
    }

    private static void readLabels(File file) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String row = "";
            int lineCount = 1;
            while (true) {
                row = reader.readLine();
                if (row == null)
                    break;
                if(row.contains("#"))
                    row = row.substring(0, row.indexOf("#") - 1);

                if (row.endsWith(":")) {
                    labels.put(row.substring(0, row.length() - 1), lineCount);
                }
                lineCount++;
                System.out.println(row);
            }
        } catch (IOException e) {
            showDialog("File is damaged.");
        }
    }

    private static void showDialog(String text) {
        JOptionPane.showMessageDialog(null, text);
    }
}
