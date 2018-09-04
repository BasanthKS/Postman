{
	"info": {
		"name": "Training::CrashCourse::Student",
		"_postman_id": "c41606cb-c982-fca8-942f-2d1bf49ddbc7",
		"description": "# Training documentation\n\nDocumentation, reference guides and material for training teams of postman.\n\n## Learning Objectives\n\n* Understand the UI and basic functions of Postman\n* Working with APIs - Rest, SOAP, GQL (basics only)\n* Basic Request Structure and Responses\n* Environment Variables\n* Pre-Request & Test scripts\n\n## Pre-requisites\n\n* Installed the lastest desktop version of Postman (ensure you are on the latest)\n* Access to the training docs... https://documenter.getpostman.com/view/2535640/7Lkf3Xe\n* Access to the training on collection on github, or via the e-mail invite",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
	},
	"item": [
		{
			"name": "Training Documentation",
			"description": "# Testing APIs\n\nAPI = __Application Programming Interface__\n\nWhilst in this session I cannot teach you to how to test APIs, I can show you the basics of interacting with APIs. \n\nIs there a distinction? Yes APIs are like anything else we test, just working through step-by-step guides will not be testing anything, testing is the process of learning and evaluation with critical thought.\n\nThat said there are a few guiding principles in which I apply when __testing___ an api:\n\n* I treat testing APIs from two angles: \n\t* Testing the tech: Does it respond in the right way? Does it give the correct HTTP response? Is the return response what we desire? Is the right authentication applied? etc.\n\t* Testing the buiness logic: Does the data sent through behave in the way we want it too? Is the data stored in the back end correctly? Forget about the responses for a minute, a {sucess} response can mean nothing if the data passed is not processed correctly.\n* Its a all about chasing data. Whether you use postman or another type of client, you are sending data. Think about the data you are sending:\n\t* Is it how a real life system would send it?\n\t* What are the limits of the data it will accept?\n\t* Does it conform to specific data contracts?\n\t* Does the response data conform to the standard?\n\t* Can the response data be consumed by key clients?\n\t* Is the data you passed stored correctly in the application?\n* An API is basically a message broker, its the connection between a client and an application. Never forget the application underneath and its constraints.\n* A 200 status or a {success} response means nothing. Always check under the hood.",
			"item": [],
			"event": [
				{
					"listen": "prerequest",
					"script": {
						"id": "4e25ce71-514c-4bfa-ad11-afabdce2fbe2",
						"type": "text/javascript",
						"exec": [
							""
						]
					}
				},
				{
					"listen": "test",
					"script": {
						"id": "4392d9db-3f33-4ea4-9dea-5c32f40a8869",
						"type": "text/javascript",
						"exec": [
							""
						]
					}
				}
			]
		},
		{
			"name": "Postman Basics",
			"description": "# The basics of using postmon\nThis folder covers the basics of using postman, including:\n* General Functionality\n* User interface\n* Postman Runner\n* Collections\n* Folders\n\n## Learning objectives\nTo build an understanding of postman as a system and its basic functionality.",
			"item": [
				{
					"name": "Basic Requests",
					"description": "# Basic style request in postman\n* Get Requests\n* Post Requests\n* Soap Requests\n* JSON responses\n* XML responses\n* HTML responses\n\n## Learning Objective\nUnderstand how different requests are build and sent in postman. This includes varying API types and a variety of responses\n",
					"item": [
						{
							"name": "Get a webpage",
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "www.google.com",
									"host": [
										"www",
										"google",
										"com"
									]
								},
								"description": "Postman can request webpages, similar to a browser. You will notice the response to google.com returns a rather horrible looking HTML document. This is what a web browser recieves when you go to that URL.\n\nThe main diference here is that postman does not work with the javascript that is embeded into the HTML.\n\nTry using PREVIEW on the the response and take a look at the page.\n\n-----\n\nTry this on some other webpages..."
							},
							"response": []
						},
						{
							"name": "Simple request",
							"request": {
								"method": "GET",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/x-www-form-urlencoded"
									}
								],
								"body": {},
								"url": {
									"raw": "https://postman-echo.com/get",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"get"
									]
								},
								"description": "This endpoint will return a JSON response. Try the same link in your browser and see what happens? If anything makes a HTTP request to that endpoint, they will get that JSON response. \n\nBuilding an understand and context of what your API is, is vital. Know your enemy!!\n\n----\n\n## Notes on https://postman-echo.com/\n\nPostman echo is a POSTMAN hosted api and is useful for practising requests. As the name implies, it echos back a response, which in a nutshell is the details of the request you sent."
							},
							"response": []
						},
						{
							"name": "Simple request with params",
							"request": {
								"method": "GET",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/x-www-form-urlencoded"
									}
								],
								"body": {},
								"url": {
									"raw": "https://postman-echo.com/get?foo=bar&test=team",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"get"
									],
									"query": [
										{
											"key": "foo",
											"value": "bar",
											"equals": true
										},
										{
											"key": "test",
											"value": "team",
											"equals": true
										}
									]
								},
								"description": "This endpoint will return a JSON response. Try the same link in your browser and see what happens? If anything makes a HTTP request to that endpoint, they will get that JSON response. \n\nThis response extends on the last request. This time we are adding parameters in through the URL string.\n\nBuilding an understand and context of what your API is, is vital. Know your enemy!!"
							},
							"response": []
						},
						{
							"name": "Post it!",
							"request": {
								"method": "POST",
								"header": [],
								"body": {
									"mode": "raw",
									"raw": ""
								},
								"url": {
									"raw": "https://postman-echo.com/post",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"post"
									]
								},
								"description": "Post requests rely on sending a data 'body' through with the request. This is easily done in postman, simply select body and enter your key => value pairs.\n\nDifferent types and formats of post bodys are availiable. \nThe most common are:\nform-data\nx-www-form-urlencoded\nraw (text/xml)\n\nThe data type is important! If you send the wrong type. The api may ignore or reject your data."
							},
							"response": []
						}
					],
					"_postman_isSubFolder": true
				},
				{
					"name": "Chained Requests",
					"description": "# Demonstrate how requests chain with the postman runner",
					"item": [
						{
							"name": "Using the postman runner!  Request :: 1",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "9a9c9acc-d3e5-44e7-a297-9d5d21e0ccb6",
										"type": "text/javascript",
										"exec": [
											"json = pm.response.json()",
											"",
											"pm.test(\"Request number: \" + json.args.request, function () {",
											"    pm.expect(json.args.request).to.eql(\"1\");",
											"});"
										]
									}
								}
							],
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://postman-echo.com/get?request=1",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"get"
									],
									"query": [
										{
											"key": "request",
											"value": "1",
											"equals": true
										}
									]
								},
								"description": "The postman runner allows you to sequentially run your requests, chaining them together. This provides a lot of flexibility around testing and automated checks.\n\n* Navigate to the collection\n* Click RUN\n* Select the 'chained requests folder'\n* Select iterations '1'\n* No environment\n* Click run and watch the magic\n\n**Requests will run in the order of the folders.**\n\nMoving down from one request to the next. The power of this allows use to do things such as register a user, then logout the user."
							},
							"response": []
						},
						{
							"name": "Request :: 2",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "246bcc3f-82d3-4977-95da-54a1a93e2903",
										"type": "text/javascript",
										"exec": [
											"json = pm.response.json()",
											"",
											"pm.test(\"Request number: \" + json.args.request, function () {",
											"    pm.expect(json.args.request).to.eql(\"2\");",
											"});"
										]
									}
								}
							],
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://postman-echo.com/get?request=2",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"get"
									],
									"query": [
										{
											"key": "request",
											"value": "2",
											"equals": true
										}
									]
								},
								"description": "The postman runner allows you to sequentially run your requests, chaining them together. This provides a lot of flexibility around testing and automated checks.\n\n* Navigate to the collection\n* Click RUN\n* Select the 'chained requests folder'\n* Select iterations '1'\n* No environment\n* Click run and watch the magic"
							},
							"response": []
						},
						{
							"name": "Request :: 3",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "f475e087-efab-4106-a13a-68833a6015ad",
										"type": "text/javascript",
										"exec": [
											"json = pm.response.json()",
											"",
											"pm.test(\"Request number: \" + json.args.request, function () {",
											"    pm.expect(json.args.request).to.eql(\"3\");",
											"});",
											"",
											"postman.setNextRequest('Request :: 5');"
										]
									}
								}
							],
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://postman-echo.com/get?request=3",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"get"
									],
									"query": [
										{
											"key": "request",
											"value": "3",
											"equals": true
										}
									]
								},
								"description": "The postman runner allows you to sequentially run your requests, chaining them together. This provides a lot of flexibility around testing and automated checks.\n\n* Navigate to the collection\n* Click RUN\n* Select the 'chained requests folder'\n* Select iterations '1'\n* No environment\n* Click run and watch the magic"
							},
							"response": []
						},
						{
							"name": "Request :: 4",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "80b1bd48-3f4f-460f-a016-d121e4d8e3cb",
										"type": "text/javascript",
										"exec": [
											"json = pm.response.json()",
											"",
											"pm.test(\"Request number: \" + json.args.request, function () {",
											"    pm.expect(json.args.request).to.eql(\"4\");",
											"});",
											"",
											"pm.test(\"You can also kill a workflow as well by setting the next request to NULL...\", function () {",
											"    pm.expect(json.args.request).to.eql(\"4\");",
											"});",
											"",
											"pm.test(\"Just watch out for infinite loops!!!\", function () {",
											"    pm.expect(json.args.request).to.eql(\"4\");",
											"});",
											"",
											"",
											"postman.setNextRequest(null)"
										]
									}
								}
							],
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://postman-echo.com/get?request=4",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"get"
									],
									"query": [
										{
											"key": "request",
											"value": "4",
											"equals": true
										}
									]
								},
								"description": ""
							},
							"response": []
						},
						{
							"name": "Request :: 5",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "d79b1457-10f1-4d50-a3d5-c7ef4ef1f34f",
										"type": "text/javascript",
										"exec": [
											"json = pm.response.json()",
											"",
											"pm.test(\"Request number: \" + json.args.request, function () {",
											"    pm.expect(json.args.request).to.eql(\"5\");",
											"});",
											"",
											"pm.test(\"Hang on, does that say 5?\", function () {",
											"    pm.expect(json.args.request).to.eql(\"5\");",
											"});",
											"",
											"pm.test(\"Yes...\", function () {",
											"    pm.expect(json.args.request).to.eql(\"5\");",
											"});",
											"",
											"pm.test(\"What happened there?\", function () {",
											"    pm.expect(json.args.request).to.eql(\"5\");",
											"});",
											"",
											"pm.test(\"Postman also supports conditional workflows, allowing you to set the next request via code in the 'TEST' function\", function () {",
											"    pm.expect(json.args.request).to.eql(\"5\");",
											"});",
											"",
											"pm.test(\"This gives a lot of power if you want to adjust your workflow based on the data you recieve!\", function () {",
											"    pm.expect(json.args.request).to.eql(\"5\");",
											"});",
											"",
											"pm.test(\"Lets go back to number 4 to finish off!\", function () {",
											"    pm.expect(json.args.request).to.eql(\"5\");",
											"});",
											"",
											"postman.setNextRequest(\"Request :: 4\")"
										]
									}
								}
							],
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://postman-echo.com/get?request=5",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"get"
									],
									"query": [
										{
											"key": "request",
											"value": "5",
											"equals": true
										}
									]
								},
								"description": "The postman runner allows you to sequentially run your requests, chaining them together. This provides a lot of flexibility around testing and automated checks.\n\n* Navigate to the collection\n* Click RUN\n* Select the 'chained requests folder'\n* Select iterations '1'\n* No environment\n* Click run and watch the magic"
							},
							"response": []
						}
					],
					"_postman_isSubFolder": true
				}
			]
		},
		{
			"name": "Postman Requests",
			"description": "# A deeper dive into the varying requests that can be performed in postman\n\nCovers:\n* Rest Requests; Post, Get, Query String & Request Body\n* SOAP Requests; Setup, Executing\n* GraphQL; Quick start guide",
			"item": [
				{
					"name": "REST Requests",
					"description": "# Basic Rest Requests\nExamples of rest requests. These is a very common API type, used through out the development world.\n\nCovers:\n* Query Strings/Parameters\n* Request Body\n* Responses",
					"item": [
						{
							"name": "REST Parameters",
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://jsonplaceholder.typicode.com/posts?userId=1",
									"protocol": "https",
									"host": [
										"jsonplaceholder",
										"typicode",
										"com"
									],
									"path": [
										"posts"
									],
									"query": [
										{
											"key": "userId",
											"value": "1",
											"equals": true
										}
									]
								},
								"description": "# Retreving data from a REST API\n\nFor reference: [https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL]\n\nA common REST api pattern is sending parameters. Parameters are appended to the PATH of a URL. Parameters on the URL are after a '?', postman also has the power to modify these via an key-value interface."
							},
							"response": []
						},
						{
							"name": "Posting Data",
							"request": {
								"method": "POST",
								"header": [],
								"body": {
									"mode": "formdata",
									"formdata": [
										{
											"key": "1",
											"value": "1",
											"type": "text"
										},
										{
											"key": "foo",
											"value": "bar",
											"type": "text"
										}
									]
								},
								"url": {
									"raw": "https://postman-echo.com/post",
									"protocol": "https",
									"host": [
										"postman-echo",
										"com"
									],
									"path": [
										"post"
									]
								},
								"description": "#Post requests are used to send a s"
							},
							"response": []
						}
					],
					"_postman_isSubFolder": true
				},
				{
					"name": "SOAP Requests",
					"description": "# SOAP requests in postman\nSOAP requests are a common form of webservice, they dictate that a request conforms to a specific standard and data is returned in a structured way. SAOP requests are always XML based.\n\nCovers:\n* Sending requests\n* SOAPUI vs Postman (symbiosis!)\n* Understanding responses\n",
					"item": [
						{
							"name": "SOAP - Login_single",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "761beb3a-3342-4519-97fd-49faa5ea1369",
										"type": "text/javascript",
										"exec": [
											""
										]
									}
								}
							],
							"request": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "text/xml"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:Magento\">\n   <soapenv:Header/>\n   <soapenv:Body>\n      <urn:loginParam>\n         <username></username>\n         <apiKey></apiKey>\n      </urn:loginParam>\n   </soapenv:Body>\n</soapenv:Envelope>"
								},
								"url": {
									"raw": "{{URL}}/api/v2_soap",
									"host": [
										"{{URL}}"
									],
									"path": [
										"api",
										"v2_soap"
									]
								}
							},
							"response": []
						}
					],
					"_postman_isSubFolder": true
				},
				{
					"name": "GraphQL Request",
					"description": "# GraphQL is a new type of API and its purpose it to allow the sender to request the sepcifc information they require from one endpoint.\n\nCovers:\n* Absolute basics",
					"item": [
						{
							"name": "Request by ID copy",
							"event": [
								{
									"listen": "prerequest",
									"script": {
										"type": "text/javascript",
										"exec": [
											"let query = ",
											"`",
											"    {",
											"        productById(productId: ` + pm.environment.get('id') + `){",
											"            id",
											"            name",
											"            description",
											"            sku",
											"            styleNumber",
											"            metaTitle",
											"            metaDescription",
											"            metaKeywords",
											"            urlKey",
											"            price",
											"            cost",
											"            weight",
											"        }",
											"    }",
											"`;",
											"",
											"pm.environment.set(\"request\", JSON.stringify({query, variables: '', operationName: ''}));"
										]
									}
								}
							],
							"request": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									},
									{
										"key": "x-api-key",
										"value": "jtPSIsEIcM7SYaGxMX0TY2QmnEHGb4E7aGskoDU5"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{{request}}"
								},
								"url": {
									"raw": "{{base_url}}/graphql",
									"host": [
										"{{base_url}}"
									],
									"path": [
										"graphql"
									]
								},
								"description": ""
							},
							"response": []
						}
					],
					"_postman_isSubFolder": true
				},
				{
					"name": "Response Types",
					"description": "# Apis can return multiple response types...\n\nThe main ones that you will encounter will be:\n* JSON\n* XML\n* HTML\n\nThis folder reviews and provides examples for each of these.",
					"item": [
						{
							"name": "XML response",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "84d59fdf-2330-40ec-ae94-3b1055a4b826",
										"type": "text/javascript",
										"exec": [
											"// below will do a simple XML to json conversion",
											"var response = xml2Json(responseBody);",
											"",
											"// examples of traversing a complex XML ",
											"console.log(response.slideshow)",
											"console.log(response.slideshow.$.author)",
											"console.log(response.slideshow.slide[0].title)",
											"console.log(response.slideshow.slide[1].item[2]._)"
										]
									}
								}
							],
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://httpbin.org/xml",
									"protocol": "https",
									"host": [
										"httpbin",
										"org"
									],
									"path": [
										"xml"
									]
								},
								"description": "Some endpoints return XML, such as SOAP endpoints or our Mobile Connnect endpoint. XML can be difficult to work with, particulary for making assertions. The easiest way to work around this is to convert XML response to JSON. This works in most cases but has its limitations, (I have never hit one personally)."
							},
							"response": []
						},
						{
							"name": "HTML response",
							"event": [
								{
									"listen": "test",
									"script": {
										"id": "75dbb888-156e-4088-8faf-79ed18beb092",
										"type": "text/javascript",
										"exec": [
											"// Load cheerio",
											"var cheerio = require('cheerio'),",
											"    $ = cheerio.load(responseBody);",
											"// get the form key ",
											"result = $('#form-validate [name=\"form_key\"]').val()",
											"// Save the key to environment variable",
											"postman.setEnvironmentVariable(\"form_key\", result);"
										]
									}
								}
							],
							"request": {
								"method": "GET",
								"header": [],
								"body": {},
								"url": {
									"raw": "https://www.missguided.co.uk/customer/account/create",
									"protocol": "https",
									"host": [
										"www",
										"missguided",
										"co",
										"uk"
									],
									"path": [
										"customer",
										"account",
										"create"
									]
								},
								"description": "As noted with the google example, you can return the html from a webpage (pre-js). This is great if you want to scrape a website for data or even a website end-point pre-javascript. \n\nParsing the HTML can be difficult... thats where jQuery comes in. For those familar with it, its simiple but powerful syntax should allow you to find the elements you desire.\n\nCheerio is a JS library used to give us the ability to use perform headless jQuery searches."
							},
							"response": []
						}
					],
					"_postman_isSubFolder": true
				}
			]
		},
		{
			"name": "Environment Variables",
			"description": "# Using evironment Variables\n\nCovers:\n* Creation\n* Selecting different environments\n* Using in request body / url\n* Saving in a test script (light touch)",
			"item": [
				{
					"name": "In the URL",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "d5e4586b-3286-442f-a26c-cb89c853ff8c",
								"type": "text/javascript",
								"exec": [
									"",
									"pm.test(\"URL contains GOOGLE\", function () {",
									"    pm.expect(pm.request.url.host[1]).to.eql('google');",
									"});",
									"",
									""
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "{{url}}",
							"host": [
								"{{url}}"
							]
						},
						"description": "# Environment Variables\n\nThese are one of the most powerful features in postman. They allow you to work with KEY VALUE pairs that are store externally to your request. You can create, read, update and delete values using JS as well as using the environment manager.\n\n## Task\n\nIn the Environment manager, create a new environment and add a key value pair of:\n\n__url__: www.google.com\n\nThen send off the request.\n\nWhat happens?"
					},
					"response": []
				},
				{
					"name": "Using Multiple Variables",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "4fd029e3-f045-4f9a-9cfa-df1ea8f82ee4",
								"type": "text/javascript",
								"exec": [
									"pm.test(\"URL contains GOOGLE\", function () {",
									"    pm.expect(pm.request.url.host[1]).to.eql('google');",
									"});",
									"",
									"pm.test(\"Protocol is HTTPS\", function () {",
									"    pm.expect(pm.request.url.protocol).to.eql('https');",
									"});"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "{{url}}",
							"host": [
								"{{url}}"
							]
						},
						"description": "# Multiple Variables\n\nVariables can be strung togther (concatenated) with text and other variables\n\n## Task\n\nIn the Environment manager, create a new environment and add a key value pair of:\n\n__protocol__: https://\n\nand then add this protocol variable to before the URL variable in the URL box"
					},
					"response": []
				},
				{
					"name": "Where else: Headers",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "8323269e-7124-4fcd-ae28-9690f1dd75c4",
								"type": "text/javascript",
								"exec": [
									"var jsonData = pm.response.json();",
									"headerValue = jsonData.headers['test-header'];",
									"",
									"pm.test(\"test-header value, expected = TEST; actual = \" + headerValue , function () {",
									"    var jsonData = pm.response.json();",
									"    pm.expect(headerValue).to.eql('TEST');",
									"});"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "test-header",
								"value": ""
							}
						],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/headers",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"headers"
							]
						},
						"description": "## Task\n\nYou can use more than one in the URL if you want, try adding the protocol into the URL...\n\n(make sure the you do no have the protocol in the url variable)"
					},
					"response": []
				},
				{
					"name": "Saving values in a script",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "a00bbbba-d241-4367-8d82-f98d31f12b0b",
								"type": "text/javascript",
								"exec": [
									"pm.test(\"Saving a variable in code\", function () {",
									"    var jsonData = pm.response.json();",
									"    pm.expect(jsonData.args.variableDemo).to.eql('script generated variable');",
									"});"
								]
							}
						},
						{
							"listen": "prerequest",
							"script": {
								"id": "c7527a30-fc8e-4fa8-b064-3d30d081177c",
								"type": "text/javascript",
								"exec": [
									"// The below code is used to save variables",
									"pm.environment.set(\"newVariable\", \"script generated variable\");"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "test-header",
								"value": ""
							}
						],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/get?variableDemo={{newVariable}}",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"get"
							],
							"query": [
								{
									"key": "variableDemo",
									"value": "{{newVariable}}",
									"equals": true
								}
							]
						},
						"description": "## Task\n\nYou can use more than one in the URL if you want, try adding the protocol into the URL...\n\n(make sure the you do no have the protocol in the url variable)"
					},
					"response": []
				},
				{
					"name": "Saving an environment variable from a response",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "0b6dfd62-c1fe-48ab-9c95-659a72a9bc39",
								"type": "text/javascript",
								"exec": [
									"//Working with responses is easy",
									"//Passing variables from one script to another using environment variables is a powerful way to chain requests and create user journeys though APIS",
									"",
									"var jsonData = pm.response.json(); // This line of code access the response from the pm object, and then converts it to json",
									"",
									"// Below is a represntation of the response for reference",
									"//{",
									"//    \"args\": {",
									"//        \"foo\": \"bar\",",
									"//        \"baz\": \"qux\"",
									"//    },",
									"//    \"headers\": {",
									"//        \"host\": \"postman-echo.com\",",
									"//        \"accept\": \"*/*\",",
									"//        \"accept-encoding\": \"gzip, deflate\",",
									"//        \"cache-control\": \"no-cache\",",
									"//        \"cookie\": \"sails.sid=s%3Alqyr0r7rQDPYtjotc1ymrbv_zzx6tedW.vjx8UpoXcWYdoPphnGKB%2FXNJSp%2BL%2FF0mnTf3Do8r40o\",",
									"//        \"postman-token\": \"c9950c49-49dc-47b9-b884-e04eae3aee35\",",
									"//        \"test-header\": \"\",",
									"//        \"user-agent\": \"PostmanRuntime/7.1.1\",",
									"//        \"x-forwarded-port\": \"443\",",
									"//        \"x-forwarded-proto\": \"https\"",
									"//    },",
									"//    \"url\": \"https://postman-echo.com/get?foo=bar&baz=qux\"",
									"//}",
									"",
									"// To access values in the data, the easiest way is just using the direct node names",
									"",
									"console.log(jsonData.args.foo)",
									"console.log(jsonData.args.baz)",
									"",
									"// if you check the logging console you should see the value of the node",
									"// no we can save that value into an environment variable for later",
									"",
									"pm.environment.set('foo', jsonData.args.foo);",
									"pm.environment.set('baz', jsonData.args.baz);",
									"",
									"// now you can use this in an another request"
								]
							}
						},
						{
							"listen": "prerequest",
							"script": {
								"id": "c77a549a-5cca-425b-bee7-af1b6375a50a",
								"type": "text/javascript",
								"exec": [
									""
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "test-header",
								"value": ""
							}
						],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/get?foo=bar&baz=qux",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"get"
							],
							"query": [
								{
									"key": "foo",
									"value": "bar",
									"equals": true
								},
								{
									"key": "baz",
									"value": "qux",
									"equals": true
								}
							]
						},
						"description": "## Task\n\nYou can use more than one in the URL if you want, try adding the protocol into the URL...\n\n(make sure the you do no have the protocol in the url variable)"
					},
					"response": []
				}
			]
		},
		{
			"name": "Pre-request and Test Scripts",
			"description": "# Basics of scripting in postman\nPostmans most powerful tool, pre-request scripts and test scripts. These turn what is HTTP Client into a powerful testing tool with the ability to make a wide range of assertions, generate test data and string requests together.\n\nCovers:\n* Difference between pre-request and tests\n* Accessing environment variables in scripts\n* Generating Test data\n* Basic Assertions",
			"item": [
				{
					"name": "Postman Console",
					"event": [
						{
							"listen": "prerequest",
							"script": {
								"id": "bcff848f-af62-4bb2-a23b-54d864e7c825",
								"type": "text/javascript",
								"exec": [
									"console.log(\"type something here\");",
									"",
									"// How about check the value of a variable? might not seem that useful for now, but if you are chaining requests, could be useful!!",
									"",
									"pm.environment.set(\"testVarConsole\", \"47959w83452374%^&*\")",
									"",
									"console.log(\"testVarConsole = \" + pm.environment.get(\"testVarConsole\"))"
								]
							}
						},
						{
							"listen": "test",
							"script": {
								"id": "e03f94ac-8ded-4935-a72d-ff88ae312917",
								"type": "text/javascript",
								"exec": [
									"// Struggling with parsing values? log them out!!!",
									"",
									"response = pm.response.json();",
									"",
									"// parse for headers and see the log",
									"console.log(\"headers = \" + response.headers);",
									"// one step deeper and visually check you have the right value",
									"console.log(\"host = \" + response.headers.host);",
									"// cookies?",
									"console.log(\"cookies = \" + response.headers.cookie);",
									"// user-agent?",
									"console.log(\"user-agent = \" + response.headers['user-agent']);",
									"// we didnt pass any arguments so there is no such thing as response.args, what happens?",
									"console.log(\"arguements passed = \" + response.args);"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/headers",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"headers"
							]
						},
						"description": "# Your new best friend\n\nThe postman console can be accesed from view, or by the icon in the bottom left. In here all your request details will log out and anything from the command \"console.log()\"\n\nIts a fantastic tool for debugging data, especially if you are working with scripts and variables.\n\nIt will also log out errors from scripts.\n\n## Spend a bit of time looking at the actual request data that appears in the log as well."
					},
					"response": []
				},
				{
					"name": "Pre-requests scripts",
					"event": [
						{
							"listen": "prerequest",
							"script": {
								"id": "862163c2-c91b-4415-876a-b53a709107ba",
								"type": "text/javascript",
								"exec": [
									"// Open up the log and watch what happens",
									"",
									"console.log('As you can see')",
									"console.log('All the results from this script are before the main body')"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/get?request=5",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"get"
							],
							"query": [
								{
									"key": "request",
									"value": "5",
									"equals": true
								}
							]
						},
						"description": "#Pre-requests scripts execute prior the to request\n\nThey are a powerful tool for generating configuring / generating data to use within a request. You can even send a request, before a request!"
					},
					"response": []
				},
				{
					"name": "Test Scripts",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "be8443ae-3ac3-4c6e-b6d4-915b848c24df",
								"type": "text/javascript",
								"exec": [
									"response = pm.response.json()",
									"",
									"pm.test(\"Foo should = bar\", function () {",
									"    pm.expect(response.args.foo).to.eql('bar');",
									"});",
									"",
									"pm.test(\"Status code is 200\", function () {",
									"    pm.response.to.have.status(200);",
									"});",
									"",
									"pm.test(\"Response time is less than 50ms\", function () {",
									"    pm.expect(pm.response.responseTime).to.be.below(50);",
									"});",
									"",
									"pm.environment.set(\"testScriptVar\", response.args.baz);",
									"",
									"console.log('anything in here, executes after the request')",
									"console.log('this means you have access to the response, headers and all the details about the request')"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/get?foo=bar&baz=qux",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"get"
							],
							"query": [
								{
									"key": "foo",
									"value": "bar",
									"equals": true
								},
								{
									"key": "baz",
									"value": "qux",
									"equals": true
								}
							]
						},
						"description": "# Test Scripts execute after the request\n\nTest scripts execute after the request and have access to the pretty much all the data from the request.\n\nAs the name implies, the can be used to make assertions or Tests to check whether or not your data meets expectations."
					},
					"response": []
				},
				{
					"name": "Postman Object",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "ef7262f7-b5d5-4d3e-8c07-90398a644f3f",
								"type": "text/javascript",
								"exec": [
									"console.log(pm.response)",
									"console.log(pm.environment)",
									"console.log(pm.globals)",
									"console.log(pm.cookies)"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/get?foo=bar&baz=qux",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"get"
							],
							"query": [
								{
									"key": "foo",
									"value": "bar",
									"equals": true
								},
								{
									"key": "baz",
									"value": "qux",
									"equals": true
								}
							]
						},
						"description": "# The postman object\n\nFor those who understand OOP. Postman stores a lot of data in what is known as the postman object. This can be accessed via the \"pm\" object. A full reference guide is here:\n\n[https://www.getpostman.com/docs/postman/scripts/postman_sandbox_api_reference]"
					},
					"response": []
				},
				{
					"name": "Creating Tests",
					"event": [
						{
							"listen": "test",
							"script": {
								"id": "e69d9835-1f76-454c-927b-0d6cd67f0b35",
								"type": "text/javascript",
								"exec": [
									"response = pm.response.json();",
									"",
									"// GOOD",
									"pm.test(\"foo should equal bar\", function () {",
									"    pm.expect(response.args.foo).to.eql('bar');",
									"});",
									"",
									"pm.test(\"baz should equal qux\", function () {",
									"    pm.expect(response.args.baz).to.eql('qux');",
									"});",
									"",
									"pm.test(\"foo should equal bar\", function () {",
									"    pm.expect(response.args.val).to.eql('1');",
									"});",
									"",
									"",
									"// BAD",
									"pm.test(\"values should match\", function () {",
									"    pm.expect(response.args.foo).to.eql('bar');",
									"    pm.expect(response.args.baz).to.eql('qux');",
									"    pm.expect(response.args.val).to.eql('1');",
									"});",
									"",
									"",
									"// Standard tests to often include",
									"",
									"pm.test(\"Response time is less than 200ms\", function () {",
									"    pm.expect(pm.response.responseTime).to.be.below(200);",
									"});",
									"",
									"pm.test(\"Status code is 200\", function () {",
									"    pm.response.to.have.status(200);",
									"});"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/get?foo=bar&baz=qux&val=1",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"get"
							],
							"query": [
								{
									"key": "foo",
									"value": "bar",
									"equals": true
								},
								{
									"key": "baz",
									"value": "qux",
									"equals": true
								},
								{
									"key": "val",
									"value": "1",
									"equals": true
								}
							]
						},
						"description": "Creating tests is easy. In the tests section of this request is a tranche of various checks. Take a look below..."
					},
					"response": []
				},
				{
					"name": "Generating Test Data",
					"event": [
						{
							"listen": "prerequest",
							"script": {
								"id": "3c97ccec-6a9b-4fb0-be07-dc3081500a1c",
								"type": "text/javascript",
								"exec": [
									"// Simple Example",
									"",
									"number_gen = Math.floor(Math.random() * 10000000);",
									"email = number_gen + '_pm_test@example.com'",
									"console.log(email)",
									"",
									"pm.environment.set('randomEmail',email)",
									"",
									"// Extreme Example",
									"",
									"random = Math.floor(Math.random() * (999999 - 100000 + 1) ) + 20000000;",
									"ean = Math.floor(Math.random() * (9999999999 - 1000000000 + 1) ) + 1000000000;",
									"size_num = Math.floor(Math.random() * 5);",
									"",
									"size_array = [\"XS\",\"S\",\"M\",\"L\",\"XL\",\"XXL\"];",
									"size_rand = size_array[size_num];",
									"style_number = random;",
									"sku = style_number + \"001\";",
									"product_name = \"Test product with stlye: \" + style_number;",
									"",
									"colours = {",
									"    RED: '80006',",
									"    BLACK: '00001'",
									"};",
									"",
									"colour_values = Object.values(colours)",
									"colour = colour_values[Math.floor(Math.random() * colour_values.length)]",
									"config_sku = style_number + \"-\" + _.findKey(colours, _.partial(_.isEqual, colour));",
									"",
									"test_data = {",
									"    sku: sku,",
									"    clothing_size: size_rand,",
									"    colour: colour,",
									"    weight: \"0.001\",",
									"    season: \"AW17\",",
									"    product_type: \"AR306\",",
									"    name: product_name,",
									"    fabric_content: \"Natural Fibre\",",
									"    harmonised_code: \"6203421100\",",
									"    style_number: style_number,",
									"    ean: ean,",
									"    config_sku: config_sku,",
									"    mg_product_type: '8499',",
									"    count: 2",
									"}",
									"",
									"for (var key in test_data) {",
									"  if (test_data.hasOwnProperty(key)) {",
									"    postman.setEnvironmentVariable(key, test_data[key]);",
									"  }",
									"}"
								]
							}
						}
					],
					"request": {
						"method": "GET",
						"header": [],
						"body": {},
						"url": {
							"raw": "https://postman-echo.com/get?email={{randomEmail}}",
							"protocol": "https",
							"host": [
								"postman-echo",
								"com"
							],
							"path": [
								"get"
							],
							"query": [
								{
									"key": "email",
									"value": "{{randomEmail}}",
									"equals": true
								}
							]
						},
						"description": "Pre-request scripts are perfect for generating test data. Below are two examples for generating simple and complex test data."
					},
					"response": []
				}
			]
		},
		{
			"name": "Reference Guide",
			"description": "# Code samples with descriptions and examples",
			"item": []
		}
	],
	"event": [
		{
			"listen": "prerequest",
			"script": {
				"id": "1d348b1f-436b-4e60-875c-081dcfca2ed9",
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		},
		{
			"listen": "test",
			"script": {
				"id": "1437ed23-8f34-4906-a11a-65ed210d79ca",
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		}
	]
}
