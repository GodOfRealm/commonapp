package com.miguan.youmi.app.base;

import android.view.View;

import com.miguan.youmi.R;
import com.miguan.youmi.bean.home.Banner;
import com.miguan.youmi.core.base.BasePagerAdapter;
import com.miguan.youmi.core.util.IImageLoader;
import com.miguan.youmi.core.widget.radius.RadiusImageView;

import java.util.List;

public class BaseBannerPagerAdapter extends BasePagerAdapter {

    private List<Banner> mBanners;
    private float mCornerRadius;

    public BaseBannerPagerAdapter(List<Banner> banners, float cornerRadius) {
        super(banners.size(), R.layout.base_viewpager_item_image);
        this.mBanners = banners;
        this.mCornerRadius = cornerRadius;
    }

    @Override
    public void convert(View view, int position) {
        RadiusImageView imageView = view.findViewById(R.id.base_view_pager_iv_image);
        imageView.setCornerRadius(mCornerRadius);
        Banner banner = mBanners.get(position);
        IImageLoader.loadImage(imageView, banner.getImage());
//        imageView.setOnClickListener(v -> Navigator.getInstance().getCommonNavigator().openWebActivity(banner.getContent()));
    }

}
