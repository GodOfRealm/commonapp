package com.miguan.youmi.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class Image implements Parcelable {

    public static final Creator<Image> CREATOR = new Creator<Image>() {
        @Override
        public Image createFromParcel(Parcel source) {
            return new Image(source);
        }

        @Override
        public Image[] newArray(int size) {
            return new Image[size];
        }
    };
    private int height;
    private String path;
    private int width;



    public Image() {
    }
    public Image(String path) {
        this.path = path;
    }

    protected Image(Parcel in) {
        this.height = in.readInt();
        this.path = in.readString();
        this.width = in.readInt();
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.height);
        dest.writeString(this.path);
        dest.writeInt(this.width);
    }
}
