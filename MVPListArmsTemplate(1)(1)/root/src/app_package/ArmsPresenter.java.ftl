package ${presenterPackageName};

import android.app.Application;

import com.jess.arms.integration.AppManager;
<#if needActivity && needFragment>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needActivity>
import com.jess.arms.di.scope.ActivityScope;
<#elseif needFragment>
import com.jess.arms.di.scope.FragmentScope;
</#if>
import ${rootPackageName}.app.base.BaseListPresenter;
import ${rootPackageName}.bean.${moduleName}.${entityName};
import com.jess.arms.http.imageloader.ImageLoader;
import javax.inject.Inject;

import ${contractPackageName}.${pageName}Contract;

import java.util.List;

import io.reactivex.Observable;

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Presenter extends BaseListPresenter<${entityName}, ${pageName}Contract.Model, ${pageName}Contract.View<${entityName}>> {
    @Inject
    Application mApplication;
    @Inject
    AppManager mAppManager;

    @Inject
    public ${pageName}Presenter (${pageName}Contract.Model model, ${pageName}Contract.View<${entityName}> rootView) {
        super(model, rootView);
    }

    @Override
    protected Observable<List<${entityName}>> provideRequestObservable(int page) {
        return null; // mModel.getUser(page);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mAppManager = null;
        this.mApplication = null;
    }
}
