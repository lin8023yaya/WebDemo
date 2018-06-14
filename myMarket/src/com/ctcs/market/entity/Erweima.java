package com.ctcs.market.entity;

import com.google.zxing.common.BitMatrix;
import org.apache.commons.collections.Buffer;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @ClassName Erweima
 * @Author lin
 * @Date 2018/6/14 14:11
 * @Version 1.0
 **/
public class Erweima {
    /**
     * 二维码的生成需要借助MatrixToImageWriter类,该类是由Google提供的,可以直接将该类用到源代码使用
     */
    private static final int BLACK=0xFF000000;
    private static final int WHITE=0xFFFFFFFF;

    public Erweima() {
    }
    public  static BufferedImage toBufferedImage(BitMatrix matrix){
        int width = matrix.getWidth();
        int height=matrix.getHeight();
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
        for (int x=0; x<width; x++){
            for (int y = 0; y < height; y++) {
                image.setRGB(x,y,matrix.get(x,y) ? BLACK : WHITE);
            }
        }
        return image;
    }
    public static void writeToFile(BitMatrix matrix, String format, File file) throws IOException{
        BufferedImage image = toBufferedImage(matrix);
        if (!ImageIO.write(image,format,file)) {
            throw new IOException("could not write an image of format" + format +" to "+file);
        }
    }
    public static void writeToStream(BitMatrix matrix, String format, OutputStream stream) throws IOException {
        BufferedImage image = toBufferedImage(matrix);
        if(!ImageIO.write(image,format,stream)){
            throw new IOException("Could not write an image of format" + format);
        }
    }
}
