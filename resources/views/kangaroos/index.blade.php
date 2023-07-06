@extends('layouts.app')

@section('content')
<div class="max-w-6xl mx-auto sm:px-6 lg:px-8">
    <div class="flex justify-center pt-8 sm:justify-start sm:pt-0">
        <h1 class="mt-2 text-gray-600 dark:text-gray-400">Kangaroos</h1>
    </div>
    <div class="overflow-hidden shadow sm:rounded-lg">
        <div id="dataGrid" class="m-8"></div>
    </div>
</div>
@endsection

@push('scripts')
    <script>
        $(function() {
            const URL = '';
            const kangaroosStore = new DevExpress.data.CustomStore({
                key: 'id',
                load() {
                    return $.get(`/api/kangaroos`, (data) => data);
                },
                insert(values) {
                    return $.post(`/api/kangaroos`, values, (data) => data);
                },
                update(key, values) {
                    values['_method'] = 'PATCH';
                    return $.post(`/api/kangaroos/${key}`, values, (data) => data);
                },
                remove(key) {
                    const values = {
                        "_method" : "DELETE"
                    };
                    return $.post(`/api/kangaroos/${key}`, values, (data) => data);
                },
            });
            $("#dataGrid").dxDataGrid({
                dataSource: kangaroosStore,
                searchPanel: {
                    visible: true,
                    highlightCaseSensitive: false,
                },
                columns: [
                    {
                        dataField: 'name',
                        dataType: 'string',
                        validationRules: [
                            { 
                                type: 'required'
                            },
                            {
                                type: 'async',
                                message: 'Kangaroo name already exist.',
                                validationCallback(params) {
                                    // const d = $.Deferred();
                                    // $.ajax({
                                    //     url: `/api/kangaroos/check-name?value=${params.value}`
                                    // }).done(function(res){
                                    //     if (res.exists) {
                                    //         d.reject(res.message);
                                    //     } else {
                                    //         d.resolve(res.message);
                                    //     }
                                    // })
                                    // return d.promise();
                                    return new Promise(function(resolve, reject) {
                                        $.ajax({
                                            url: `/api/kangaroos/check-name?value=${params.value}`
                                        }).done(function(res){
                                            console.log(res);
                                            if (res.exists) {
                                                reject(res.message);
                                            } else {
                                                resolve(res.message);
                                            }
                                        });
                                    });
                                },
                            }
                        ],
                    },
                    {
                        dataField: 'nickname',
                        dataType: 'string',
                        visible: false
                    },
                    {
                        dataField: 'birthday',
                        dataType: 'date',
                        validationRules: [{ type: 'required' }],
                    },
                    {
                        dataField: 'weight',
                        validationRules: [
                            { 
                                type: 'required'
                            }, 
                            {
                                type: 'pattern',
                                message: 'Weight must have decimal!',
                                pattern: /^\d+([.]\d)?$/i 
                            }
                        ],
                    },
                    {
                        dataField: 'height',
                        validationRules: [
                            { 
                                type: 'required' 
                            },
                            {
                                type: 'pattern',
                                message: 'Height must have decimal!',
                                pattern: /^\d+([.]\d)?$/i 
                            }
                        ],
                    },
                    {
                        dataField: 'gender',
                        validationRules: [{ type: 'required' }],
                        visible: false
                    },
                    {
                        dataField: 'color',
                        visible: false
                    },
                    {
                        dataField: 'friendliness'
                    },
                ],
                editing: {
                    mode: 'popup',
                    allowUpdating: true,
                    allowAdding: true,
                    allowDeleting: true,
                    popup: {
                        title: 'Kangaroo Info',
                        showTitle: true,
                    },
                    form: {
                        items: [{
                            itemType: 'group',
                            colCount: 2,
                            colSpan: 2,
                            items: [
                                {
                                    dataField: 'name'
                                },
                                {
                                    dataField: 'nickname'
                                },
                                {
                                    dataField: 'weight',
                                    editorType: 'dxNumberBox',
                                },
                                {
                                    dataField: 'height',
                                    editorType: 'dxNumberBox',
                                },
                                {
                                    dataField: 'gender',
                                    editorType: 'dxSelectBox',
                                    editorOptions: {
                                        items: [
                                            'Male',
                                            'Female'
                                        ]
                                    }
                                },
                                {
                                    dataField: 'color'
                                },
                                {
                                    dataField: 'friendliness',
                                    editorType: 'dxSelectBox',
                                    editorOptions: {
                                        items: [
                                            'Friendly',
                                            'Not Friendly'
                                        ]
                                    },
                                },
                                {
                                    dataField: 'birthday',
                                    editorType: 'dxDateBox',
                                    editorOptions: {
                                        // placeholder: '10/16/2018',
                                        dateSerializationFormat: "MM/dd/yyyy",
                                        displayFormat: 'shortDate',
                                        format: {
                                            type: 'shortDate'
                                        },
                                        showClearButton: true,
                                    },
                                },
                            ]
                        }]
                    }
                },
            });
        });
    </script>
@endpush