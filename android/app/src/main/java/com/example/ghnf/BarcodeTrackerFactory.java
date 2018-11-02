package com.example.ghnf;

import android.content.Context;

import com.example.ghnf.camera.GraphicOverlay;
import com.google.android.gms.vision.MultiProcessor;
import com.google.android.gms.vision.Tracker;
import com.google.android.gms.vision.barcode.Barcode;

/**
 * Factory for creating a tracker and associated graphic to be associated with a new barcode.  The
 * multi-processor uses this factory to create barcode trackers as needed -- one for each barcode.
 */
public class BarcodeTrackerFactory implements MultiProcessor.Factory<Barcode> {
   private GraphicOverlay<BarcodeGraphic> mGraphicOverlay;
   private Context mContext;

   public BarcodeTrackerFactory(GraphicOverlay<BarcodeGraphic> graphicOverlay,
                                Context context){
       mGraphicOverlay = graphicOverlay;
       mContext = context;
   }

    @Override
    public Tracker<Barcode> create(Barcode barcode) {
       BarcodeGraphic graphic = new BarcodeGraphic(mGraphicOverlay);
        return new BarcodeGraphicTracker(mGraphicOverlay, graphic, mContext);
    }
}
