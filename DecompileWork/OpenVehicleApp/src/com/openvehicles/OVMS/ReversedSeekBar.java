package com.openvehicles.OVMS;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;

public class ReversedSeekBar extends SeekBar {
	public boolean isReversed = true;

	public ReversedSeekBar(Context paramContext, AttributeSet paramAttributeSet) {
		super(paramContext, paramAttributeSet);
	}

	protected void onDraw(Canvas paramCanvas) {
		if (this.isReversed)
			paramCanvas.scale(-1.0F, 1.0F, getWidth() / 2.0F,
					getHeight() / 2.0F);
		super.onDraw(paramCanvas);
	}

	public boolean onTouchEvent(MotionEvent paramMotionEvent) {
		if (this.isReversed)
			paramMotionEvent.setLocation(getWidth() - paramMotionEvent.getX(),
					paramMotionEvent.getY());
		return super.onTouchEvent(paramMotionEvent);
	}
}