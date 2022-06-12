//
// ComplianceAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ComplianceAPI {

    /**
     Create compliance job
     
     - parameter createComplianceJobRequest: (body)  
     - returns: CreateComplianceJobResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createBatchComplianceJob(createComplianceJobRequest: CreateComplianceJobRequest) async throws -> CreateComplianceJobResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = createBatchComplianceJobWithRequestBuilder(createComplianceJobRequest: createComplianceJobRequest).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     Create compliance job
     - POST /2/compliance/jobs
     - Creates a compliance for the given job type
     - BASIC:
       - type: http
       - name: BearerToken
     - parameter createComplianceJobRequest: (body)  
     - returns: RequestBuilder<CreateComplianceJobResponse> 
     */
    open class func createBatchComplianceJobWithRequestBuilder(createComplianceJobRequest: CreateComplianceJobRequest) -> RequestBuilder<CreateComplianceJobResponse> {
        let localVariablePath = "/2/compliance/jobs"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createComplianceJobRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateComplianceJobResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter complianceJobFields
     */
    public enum ComplianceJobFields_getBatchComplianceJob: String, CaseIterable {
        case createdAt = "created_at"
        case downloadExpiresAt = "download_expires_at"
        case downloadUrl = "download_url"
        case id = "id"
        case name = "name"
        case resumable = "resumable"
        case status = "status"
        case type = "type"
        case uploadExpiresAt = "upload_expires_at"
        case uploadUrl = "upload_url"
    }

    /**
     Get Compliance Job
     
     - parameter id: (path) The ID of the Compliance Job to retrieve. 
     - parameter complianceJobFields: (query) A comma separated list of ComplianceJob fields to display. (optional)
     - returns: Get2ComplianceJobsIdResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBatchComplianceJob(id: String, complianceJobFields: [ComplianceJobFields_getBatchComplianceJob]? = nil) async throws -> Get2ComplianceJobsIdResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = getBatchComplianceJobWithRequestBuilder(id: id, complianceJobFields: complianceJobFields).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     Get Compliance Job
     - GET /2/compliance/jobs/{id}
     - Returns a single Compliance Job by ID
     - BASIC:
       - type: http
       - name: BearerToken
     - parameter id: (path) The ID of the Compliance Job to retrieve. 
     - parameter complianceJobFields: (query) A comma separated list of ComplianceJob fields to display. (optional)
     - returns: RequestBuilder<Get2ComplianceJobsIdResponse> 
     */
    open class func getBatchComplianceJobWithRequestBuilder(id: String, complianceJobFields: [ComplianceJobFields_getBatchComplianceJob]? = nil) -> RequestBuilder<Get2ComplianceJobsIdResponse> {
        var localVariablePath = "/2/compliance/jobs/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "compliance_job.fields": complianceJobFields?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Get2ComplianceJobsIdResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter type
     */
    public enum ModelType_listBatchComplianceJobs: String, CaseIterable {
        case tweets = "tweets"
        case users = "users"
    }

    /**
     * enum for parameter status
     */
    public enum Status_listBatchComplianceJobs: String, CaseIterable {
        case created = "created"
        case inProgress = "in_progress"
        case failed = "failed"
        case complete = "complete"
    }

    /**
     * enum for parameter complianceJobFields
     */
    public enum ComplianceJobFields_listBatchComplianceJobs: String, CaseIterable {
        case createdAt = "created_at"
        case downloadExpiresAt = "download_expires_at"
        case downloadUrl = "download_url"
        case id = "id"
        case name = "name"
        case resumable = "resumable"
        case status = "status"
        case type = "type"
        case uploadExpiresAt = "upload_expires_at"
        case uploadUrl = "upload_url"
    }

    /**
     List Compliance Jobs
     
     - parameter type: (query) Type of Compliance Job to list. 
     - parameter status: (query) Status of Compliance Job to list. (optional)
     - parameter complianceJobFields: (query) A comma separated list of ComplianceJob fields to display. (optional)
     - returns: Get2ComplianceJobsResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func listBatchComplianceJobs(type: ModelType_listBatchComplianceJobs, status: Status_listBatchComplianceJobs? = nil, complianceJobFields: [ComplianceJobFields_listBatchComplianceJobs]? = nil) async throws -> Get2ComplianceJobsResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = listBatchComplianceJobsWithRequestBuilder(type: type, status: status, complianceJobFields: complianceJobFields).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     List Compliance Jobs
     - GET /2/compliance/jobs
     - Returns recent Compliance Jobs for a given job type and optional job status
     - BASIC:
       - type: http
       - name: BearerToken
     - parameter type: (query) Type of Compliance Job to list. 
     - parameter status: (query) Status of Compliance Job to list. (optional)
     - parameter complianceJobFields: (query) A comma separated list of ComplianceJob fields to display. (optional)
     - returns: RequestBuilder<Get2ComplianceJobsResponse> 
     */
    open class func listBatchComplianceJobsWithRequestBuilder(type: ModelType_listBatchComplianceJobs, status: Status_listBatchComplianceJobs? = nil, complianceJobFields: [ComplianceJobFields_listBatchComplianceJobs]? = nil) -> RequestBuilder<Get2ComplianceJobsResponse> {
        let localVariablePath = "/2/compliance/jobs"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type.encodeToJSON(),
            "status": status?.encodeToJSON(),
            "compliance_job.fields": complianceJobFields?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Get2ComplianceJobsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
