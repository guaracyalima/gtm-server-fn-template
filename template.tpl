___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "serverGetFirstName",
  "description": "get first name from webhook or event data",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "nome",
    "displayName": "",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

// Insira aqui o código do modelo.
var name = data.nome;
var words = name.substring(0, name.indexOf(' '));
// As variáveis precisam retornar um valor.
return words;


___TESTS___

scenarios:
- name: oracio vieira
  code: |-
    const mockData = {
    nome: 'oracio vieira'
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);
- name: single name
  code: |-
    const mockData = {
    nome: 'mandioca'
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);
- name: null name
  code: |-
    const mockData = {
    nome: ''
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);
- name: Untitled test 4
  code: |-
    const mockData = {
    nome: 'xubaca vieira'
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);


___NOTES___

Created on 21/03/2024, 08:23:23


