package nl.whitehorses.fcforms.shell.backing;

import java.util.Map;

import javax.faces.event.ActionEvent;

import nl.whitehorses.fcforms.tasks.entities.FcTask;

import oracle.adf.model.BindingContext;
import oracle.adf.model.bean.DCDataRow;

import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.adfinternal.view.faces.model.binding.FacesCtrlHierNodeBinding;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Row;

public class TaskBean {


    public TaskBean() {
    }

    public void acquire(ActionEvent actionEvent) {
        // Add event code here...
        // get the binding container
        executeTask("acquireTask");
    }

    public void reject(ActionEvent actionEvent) {
        // Add event code here...
        executeTask("rejectTask");
    }

    public void approve(ActionEvent actionEvent) {
        // Add event code here...
        executeTask("completeTask");
    }


    public void executeTask(String action) {
        BindingContainer bindings =
            BindingContext.getCurrent().getCurrentBindingsEntry();


        // get an Action or MethodAction
        OperationBinding method = bindings.getOperationBinding(action);
        method.execute();

        OperationBinding method2 = bindings.getOperationBinding("getHumanTasks");
        method2.execute();


    }

    public void showTask(ActionEvent actionEvent) {
        // Add event code here...
        AdfFacesContext adfFacesCtx = AdfFacesContext.getCurrentInstance();
        // get the PageFlowScope Params
        Map<String, Object> scopePageFlowScopeVar= adfFacesCtx.getPageFlowScope();
        String taskId = (String)scopePageFlowScopeVar.get("taskId");
        System.out.println("task: "+taskId);

        FacesCtrlHierNodeBinding rowData = (FacesCtrlHierNodeBinding)scopePageFlowScopeVar.get("task");  
        Row row = rowData.getRow();  
        FcTask task = (FcTask)((DCDataRow)row).getDataProvider() ;  
        
        
    }

    
}
