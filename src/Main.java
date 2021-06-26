import javax.swing.*;
import java.io.*;
import java.util.HashMap;

public class Main {
    static FileWriter fw;

    static HashMap<String, String> opCode = new HashMap<>() {{
        put("add",  "0");
        put("sub",  "1");
        put("and",  "2");
        put("or" ,  "3");
//        put("nor",  "4");
        put("addi", "4");
        put("beq",  "5");
        put("jmp",  "6");
        put("lw", "7");
        put("sw", "8");
    }};

    static HashMap<String, String> registers  = new HashMap<>() {{
        put("$t0", "0");
        put("$t1", "1");
        put("$t2", "2");
        put("$t3", "3");
        put("$t4", "4");
        put("$t5", "5");
        put("$t6", "6");
        put("$t7", "7");
        put("$t8", "8");
        put("$t9", "9");
        put("$t10", "a");
        put("$t11", "b");
        put("$t12", "c");
        put("$t13", "d");
        put("$t14", "e");
        put("$t15", "f");
    }};

    static HashMap<String, Integer> labels = new HashMap<>();

    public static void main(String[] args) {
        fw = makeFile();
        read();
        try {
            fw.close();
        } catch (IOException e) {
            System.out.println("Failed to make the output file.");
        }
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

    private static String getIm(String number, int bytes) {
        int n = Integer.parseInt(number);
        if (n >= (Math.pow(16, bytes)))
            throw new IllegalStateException("Immediate numbers should be smaller than " + (Math.pow(16, bytes)) + ".");

        StringBuilder ans = new StringBuilder(Integer.toHexString(n) + "");
        while (ans.length() < bytes) {
            ans.insert(0, "0");
        }

        return ans.toString();
    }

    private static String toHex(String[] params, int nextLine) {
        try {
            switch (params[0]) {
                case "add":
                    return opCode.get("add") + registers.get(params[2]) + registers.get(params[3])
                            + registers.get(params[1]) + "ffff";
                case "sub":
                    return opCode.get("sub") + registers.get(params[2]) + registers.get(params[3])
                            + registers.get(params[1]) + "ffff";
                case "addi":
                    return opCode.get("addi") + registers.get(params[2]) + registers.get(params[1]) + "f" +
                            getIm(params[3], 4);
                case "and":
                    return opCode.get("and") + registers.get(params[2]) + registers.get(params[3])
                            + registers.get(params[1]) + "ffff";
                case "or":
                    return opCode.get("or") + registers.get(params[2]) + registers.get(params[3])
                            + registers.get(params[1]) + "ffff";
//                case "nor":
//                    return opCode.get("nor") + registers.get(params[1]) + registers.get(params[2])
//                            + registers.get(params[3]) + "ffff";
                case "jmp":
                    if (labels.containsKey(params[1]))
                        return opCode.get("jmp") + "fff" + getIm(labels.get(params[1]) + "", 4);
//                    else
//                        return opCode.get("jmp") + "fff" + getIm(Integer.parseInt(params[1]) - 1 + "", 4);
                case "beq":
                    if(labels.containsKey(params[3]))
                        return opCode.get("beq") + registers.get(params[1]) + registers.get(params[2]) + "f" +
                                getIm(labels.get(params[3]) - nextLine + "", 4);
                    else
                        return opCode.get("beq") + registers.get(params[1]) + registers.get(params[2]) + "f" +
                                getIm(Integer.parseInt(params[3]) - 1 + "", 4);
                case "sw":
                    return opCode.get("sw") + registers.get(params[2]) + registers.get(params[1]) + "f" +
                            getIm(params[3], 4);
                case "lw":
                    return opCode.get("lw") + registers.get(params[2]) + registers.get(params[1]) + "f" +
                            getIm(params[3], 4);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            System.out.println("Code is not valid.");
        }
        return null;
    }

    private static FileWriter makeFile() {
        try {
            File file = new File("Examples//output.hex");
            if (file.exists())
                file.delete();
            file.createNewFile();
            return new FileWriter(file);
        } catch (IOException e) {
            System.out.println("Failed to make the output file.");
        }
        return null;
    }

    private static void write(String hex) {
        try {
            fw.write(hex + "\n");
        } catch (IOException e) {
            System.out.println("Failed to make the output file");
        }
    }

    private static void read(File file) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String row = "";
            int lineCount = 0;
            while (true) {
                row = reader.readLine();
                if (row == null)
                    break;
                row = row.trim().toLowerCase();
                if(row.contains("#"))
                    row = row.substring(0, Math.max(row.indexOf("#") - 1, 0));
                if(row.length() == 0)
                    continue;

                System.out.println(row);
                if (!row.endsWith(":")) {
                    lineCount++;
                    String[] params = row.replaceAll(",", "").split("[ \t]+");
                    write(toHex(params, lineCount));
                }
            }
        } catch (IOException e) {
            showDialog("File is damaged.");
        }
    }

    private static void readLabels(File file) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String row = "";
            int lineCount = 0;
            while (true) {
                row = reader.readLine();
                if (row == null)
                    break;
                row = row.trim().toLowerCase();
                if(row.contains("#"))
                    row = row.substring(0, Math.max(row.indexOf("#") - 1, 0));

                if (row.endsWith(":")) {
                    System.out.println(row.substring(0, row.length() - 1) +  (lineCount));
                    labels.put(row.substring(0, row.length() - 1), lineCount);
                }
                else {
                    if (!row.equals(""))
                        lineCount++;
                }
            }
        } catch (IOException e) {
            showDialog("File is damaged.");
        }
    }

    private static void showDialog(String text) {
        JOptionPane.showMessageDialog(null, text);
    }
}