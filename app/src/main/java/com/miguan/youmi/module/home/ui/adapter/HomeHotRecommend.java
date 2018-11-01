package com.miguan.youmi.module.home.ui.adapter;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

import com.miguan.youmi.R;
import com.miguan.youmi.bean.home.HomeHotRecommendBean;
import com.miguan.youmi.core.base.ItemPresenter;
import com.miguan.youmi.core.base.ViewHolder;

import java.util.ArrayList;

/**
 * 作者: zws 2018/11/1 0001 14:44
 * 功能描述:
 * 备注:
 */
public class HomeHotRecommend extends ItemPresenter<HomeHotRecommendBean> {
    @Override
    public int getLayoutRes() {
        return R.layout.home_recyele_recommend;
    }

    @Override
    public void convert(ViewHolder holder, HomeHotRecommendBean homeHotRecommendBean) {

        RecyclerView recyclerView = holder.getView(R.id.home_recyele_recommend_rv_list);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        ArrayList<String> titleList = new ArrayList<String>();
        for (int i = 0; i < 3; i++) {
            titleList.add(i + "");
        }
        HomeHotRecommedAdapter adapter = new HomeHotRecommedAdapter(titleList);
        recyclerView.setAdapter(adapter);
    }
}
