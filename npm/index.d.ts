declare module '@apiverve/loremipsumgenerator' {
  export interface loremipsumgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface loremipsumgeneratorResponse {
    status: string;
    error: string | null;
    data: LoremIpsumGeneratorData;
    code?: number;
  }


  interface LoremIpsumGeneratorData {
      words:     number;
      sentences: number;
      text:      string;
  }

  export default class loremipsumgeneratorWrapper {
    constructor(options: loremipsumgeneratorOptions);

    execute(callback: (error: any, data: loremipsumgeneratorResponse | null) => void): Promise<loremipsumgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: loremipsumgeneratorResponse | null) => void): Promise<loremipsumgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<loremipsumgeneratorResponse>;
  }
}
