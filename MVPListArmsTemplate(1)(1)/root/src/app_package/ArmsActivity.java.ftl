package ${modulePackage}.ui.activity;

import android.support.annotation.NonNull;

import com.jess.arms.di.component.AppComponent;
import ${rootPackageName}.R;
import ${rootPackageName}.app.base.BaseListActivity;
import ${rootPackageName}.app.base.EmptyView;
import ${rootPackageName}.core.base.BaseAdapter;
import ${rootPackageName}.bean.${moduleName}.${entityName};
import ${modulePackage}.ui.adapter.${adapterName};

import ${componentPackageName}.Dagger${pageName}Component;
import ${moudlePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

public class ${pageName}Activity extends BaseListActivity<${entityName}, ${pageName}Presenter> implements ${pageName}Contract.View<${entityName}> {

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(new ${pageName}Module(this))
                .build()
                .inject(this);
    }

    @Override
    public void begin() {

    }

    @Override
    public void setupEmptyView(EmptyView emptyView) {
        emptyView.setEmptyText("还没有相关数据哦~")
                .setEmptyImageResource(R.mipmap.ic_launcher)
                .setRetryText("重试");
    }

    @Override
    public BaseAdapter<${entityName}> generateAdapter() {
        return new ${adapterName}();
    }
}
