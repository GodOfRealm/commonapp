package ${modulePackage}.ui.adapter;

import com.chad.library.adapter.base.BaseViewHolder;
import ${rootPackageName}.core.base.BaseAdapter;
import ${rootPackageName}.bean.${moduleName}.${entityName};
import ${rootPackageName}.R;

public class ${adapterName} extends BaseAdapter<${entityName}> {
    public ${adapterName}() {
        super(R.layout.${adapterLayoutName});
    }

    @Override
    protected void convert(BaseViewHolder helper, ${entityName} item) {
    }
}
