package ${fragmentPackageName};

import android.support.annotation.NonNull;

import com.jess.arms.di.component.AppComponent;
import ${rootPackageName}.app.base.BaseListFragment;
import ${rootPackageName}.app.base.EmptyView;
import ${rootPackageName}.core.base.BaseAdapter;
import ${componentPackageName}.Dagger${pageName}Component;
import ${moudlePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;
import ${modulePackage}.model.bean.${entityName};

import ${rootPackageName}.R;
import ${modulePackage}.ui.adapter.${adapterName}

public class ${pageName}Fragment extends BaseListFragment<${entityName}, ${pageName}Presenter> implements ${pageName}Contract.View<${entityName}>{

    public static ${pageName}Fragment newInstance() {
        ${pageName}Fragment fragment = new ${pageName}Fragment();
        return fragment;
    }

    @Override
    public void setupFragmentComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(new ${pageName}Module(this))
                .build()
                .inject(this);
    }

    @Override
    public void setupEmptyView(EmptyView emptyView) {
        emptyView.setEmptyText("没有相关数据哦~")
                        .setEmptyImageResource(R.mipmap.ic_launcher)
                        .setRetryText("重试");
    }

    @Override
    public BaseAdapter<${entityName}> generateAdapter() {
        return new ${adapterName}(R.layout.${adapterLayoutName});
    }
}
